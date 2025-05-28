#include "page.h"
#include "frame.h"
#include "swap.h"
#include "threads/palloc.h"
#include "threads/malloc.h"
#include "userprog/pagedir.h"	
#include "userprog/process.h"
#include "filesys/file.h"
#include <string.h>

static unsigned page_hash_func(const struct hash_elem *a, void *aux UNUSED);
static bool page_less_func (const struct hash_elem *a, const struct hash_elem *b,
    void *aux UNUSED);
static void spt_remove_entry(struct hash_elem *e, void *aux UNUSED);


/*Compute hash values based on page (virtual) address using hash
  Using in spt_init()*/
static unsigned page_hash_func (const struct hash_elem *a, void *aux UNUSED)
{
    struct spt_entry *spt_entry1 = hash_entry (a, struct spt_entry, helem);
    return hash_bytes (&spt_entry1->page_addr, sizeof(spt_entry1->page_addr));
}

/*compare hash elements using page (virtual) address 
  Using in spt_init()*/
static bool
page_less_func (const struct hash_elem *a,
                const struct hash_elem *b,
                void *aux UNUSED)
{
  struct spt_entry *spt_entry1 = hash_entry (a, struct spt_entry, helem);
  struct spt_entry *spt_entry2 = hash_entry (b, struct spt_entry, helem);
  return spt_entry1->page_addr < spt_entry2->page_addr;
}

/**/
static void spt_remove_entry(struct hash_elem *e, void *aux UNUSED)
{
	struct spt_entry *entry = hash_entry(e, struct spt_entry, helem);
	free_frames(entry->isLoaded, entry->page_addr);
	free(entry);
}

/*initialized supplemental page table*/
void spt_init( struct hash* page_table){
    hash_init(page_table, page_hash_func, page_less_func, NULL);
}

/*create new entry and insert it into supplemental page table */
void create_spt_entry(void *upage, struct file *f, off_t offset,    
    enum page_type type,size_t read_bytes, size_t zero_bytes, bool writeable)
{
    struct spt_entry *new_spt_entry = (struct spt_entry*) malloc(sizeof(struct spt_entry));
    
    new_spt_entry->page_addr = pg_round_down(upage);
    new_spt_entry->writeable = writeable;
	new_spt_entry->is_pinned = false;
    new_spt_entry->type = type;

    /* use file_reopen() to create new referenec to the same file
    , so we can close the original in process_exit() without effecting*/
    new_spt_entry->f_info.f = file_reopen(f);
	new_spt_entry->f_info.offset = offset;
	new_spt_entry->f_info.read_bytes = read_bytes;
	new_spt_entry->f_info.zero_bytes = zero_bytes;

    hash_insert(&thread_current()->page_table, &new_spt_entry->helem);
}

/*find and return an entry of spt based on page */
struct spt_entry *spt_find_entry (void *upage)
{
  struct spt_entry entry;
  entry.page_addr = pg_round_down(upage);
  struct thread *thread_cur = thread_current();
  struct hash_elem *e = hash_find (&thread_cur->page_table, &entry.helem);
  if (e != NULL) {
    return hash_entry(e, struct spt_entry, helem);
    }
    return NULL;
}

/* destroy supplemental page table spt*/
void spt_remove(struct hash *spt)
{
    hash_destroy(spt, spt_remove_entry);
}

/*load data from file to memory or swap in data from disk into frame*/
bool page_load(struct spt_entry* entry)
{
    
    switch (entry->type)
    {
    case VM_BIN: /*executable file is loaded*/
    {
       printf("VM_BIN CASE\n");
        return load_from_file(entry);
    }

    case VM_FILE: /*memory-mapped file is loaded*/
    {
        printf("VM_FILE CASE\n");
        return load_from_file(entry);
    }    
    
    case VM_ANON: /*pages in */
    {
        printf("VM_ANON CASE");
        return load_from_disk(entry);
    }

    default:
        printf("No entry's type is provided, page load error");
        return false;
    }
}

/*Load a page from file into memory */
bool load_from_file(struct spt_entry* entry)
{
    /*allocate a frame*/
    uint8_t *frame = palloc_get_page(PAL_USER);
    if(frame == NULL) 
    {
        printf("error at load_in_file(): there is no free frame\n");
        return false;
    }

    entry->is_pinned = true; /*avoid page's eviction while load data*/

    /*read data from file into memory*/
    if(entry->f_info.read_bytes > 0) /*in case file has data to read*/
    {
        if (entry->f_info.f == NULL) {
            printf("Error: file pointer is NULL in load_from_file()\n");
            palloc_free_page(&frame);
            return false;
        } 
        printf("file length: %d, offset: %d\n", file_length(entry->f_info.f), entry->f_info.offset);   
        size_t file_read_data = file_read_at(entry->f_info.f, frame, entry->f_info.read_bytes,
            entry->f_info.offset);
        
        if(file_read_data != (int) entry->f_info.read_bytes){
                printf("read not enough file in load_from_file()\n");
                palloc_free_page(&frame);
            }
    }

    /*fill the rest of the page with 0s*/
    memset (frame + entry->f_info.read_bytes, 0,entry->f_info.zero_bytes);

    /*Adds a mapping from user virtual address UPAGE to kernel
        virtual address KPAGE to the page table */
    // printf(" start mapping virtual address UPAGE to kernel virtual address KPAGE \n");
    bool is_install_success = install_page (entry->page_addr, frame, entry->writeable);
    
    entry->isLoaded = true;

    /*free page in case failed*/
    if(!is_install_success) {
        printf("map user virtual address to kernel virtual address failed at line 131 file vm/page.c");
        palloc_free_page(&frame);
        entry->isLoaded = false;
    }
    // printf("install_sucess\n");
    entry->is_pinned = false;
    return is_install_success;
}

/*Load a page from the swap space back into physical memory after being swapped out.*/
bool load_from_disk(struct spt_entry* entry)
{
    /*allocate a frame*/
    void *frame = palloc_get_page(PAL_USER);
    if(frame == NULL) return false;

    entry->is_pinned = true; /*avoid page's eviction while load data*/

    swap_in(entry->ind_swp, frame);

    /*Adds a mapping from user virtual address UPAGE to kernel
        virtual address KPAGE to the page table */
    bool is_install_success = install_page (entry->page_addr, frame, entry->writeable);

    entry->isLoaded = true;

    /*free page in case failed*/
    if(!is_install_success) {
        printf("map user virtual address to kernel virtual address failed at line 131 file vm/page.c");
        palloc_free_page(&frame);
        entry->isLoaded = false;
    }
    entry->is_pinned = false; /* enable eviction after this*/
    return is_install_success;   
}
