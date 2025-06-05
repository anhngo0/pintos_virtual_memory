#include "frame.h"
#include "list.h"
#include "page.h"
#include "swap.h"
#include "hash.h"
#include "filesys/file.h"
#include "userprog/pagedir.h"
#include "userprog/syscall.h"


/* Initialize frame table */
void frame_table_init(void) {
    list_init(&frame_table);
    lock_init(&frame_lock);
}

void free_frame (void *frame)
{
    lock_acquire(&frame_lock);

    struct list_elem *e = list_begin(&frame_table);
    while (e != list_end(&frame_table)) {
        struct frame_entry *fe = list_entry(e, struct frame_entry, list_elem);
        // fe->is_pinned = true;
        if (fe->frame_addr == frame) {
            // Remove mapping from page directory if it's still mapped
            if (fe->owner != NULL && fe->page_addr != NULL) {
                pagedir_clear_page(fe->owner->pagedir, fe->page_addr);
            }

            // Remove from frame table
            list_remove(e);
            
            // Free frame memory
            palloc_free_page(frame);
            
            // fe->is_pinned = false;
            // Free frame_entry structure
            free(fe);

            break;
        }
        e = list_next(e);
        // fe->is_pinned = false;
    }

    lock_release(&frame_lock);
}

void *frame_allocate(enum palloc_flags flags, void *upage)
{
    /*allocate frame*/
    void *frame = palloc_get_page(flags);

    if (frame == NULL) {
        // printf("frame is NUll\n");
        frame = evict_frame();
        if (frame == NULL)
            return NULL;
    }

    /*allocate and initialize frame entry*/
    struct frame_entry *fe = malloc(sizeof(struct frame_entry));
    fe->frame_addr = frame;
    fe->page_addr = upage;
    fe->owner = thread_current();
    fe->is_pinned = true;

    /*insert to frame table at the bottom*/
    lock_acquire(&frame_lock);
    list_push_back(&frame_table, &fe->list_elem);
    fe->is_pinned = false;
    lock_release(&frame_lock);

    return frame;
}

void *evict_frame(void) {
    lock_acquire(&frame_lock);

    // printf("start evict frame\n");
    struct list_elem *e = list_begin(&frame_table);
    struct frame_entry *victim = NULL;
    struct spt_entry *spt_entry = NULL;

    while (e != list_end(&frame_table)) {
        victim = list_entry(e, struct frame_entry, list_elem);
        spt_entry = spt_find_entry(victim->owner, victim->page_addr);

        
        /*if the spt_entry is pinned, pass*/
        if (spt_entry == NULL || spt_entry->is_pinned || is_kernel_vaddr(victim->page_addr) ) {
            e = list_next(e);
            continue;
        }

        /*if the victim frame is not pinned, we can evict it, break*/
        if (!victim->is_pinned) {
            break;
        }

        e = list_next(e);
    }

    /*in case we reach the end of list and
     can not found any frame can be evicted*/
    if (e == list_end(&frame_table)) {
        lock_release(&frame_lock);
        PANIC("No frame available to evict\n");
        return NULL;
    }

    if (spt_entry->isLoaded) {
        // If the page was allocated but only zeroes, we can skip swap
        if (spt_entry->type == VM_ANON && spt_entry->f_info.f == NULL && spt_entry->f_info.read_bytes == 0) {
            // No need to swap out; just mark it as not loaded
            spt_entry->isLoaded = false;
        } else {
            // Swap it out
            spt_entry->index_swap = swap_out(victim->frame_addr);
            spt_entry->type = VM_ANON;
            spt_entry->isLoaded = false;
        }
    }

    pagedir_clear_page(victim->owner->pagedir, spt_entry->page_addr);

    /*Save the evicted frame's physical address to return it lat*/
    void *evicted_frame = victim->frame_addr;

    list_remove(&victim->list_elem);
    free(victim); /*Free the memory used by the frame_entry struct (not the frame itself)*/

    lock_release(&frame_lock);
    return evicted_frame;
}



