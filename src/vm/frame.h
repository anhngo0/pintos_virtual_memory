#ifndef VM_FRAME_H
#define VM_FRAME_H

#include "threads/thread.h"
#include "threads/palloc.h"
#include "threads/malloc.h"
#include "threads/synch.h"

static struct list frame_table;

/*unlike supplemental page table, frame table is shared across 
all threads. All threads can allocate a frame, free a frame, lookup a frame
.without a lock, simultaneous access can corrupt the hash table or caused 
undefined behavior*/
static struct lock frame_lock;

struct frame_entry {
    void *page_addr; /*key to find this entry in hash table*/
    void *frame_addr; /*helps with reverse mapping in eviction*/
    struct thread *owner; /*thread that owns the frame*/
    bool is_pinned; /*must not evict if is_pinned = true*/
    struct list_elem list_elem; /*need for storing in hash table*/
};

void frame_table_init();
void free_frame( void *frame);
void *frame_allocate(enum palloc_flags flags, void *upage);
void *evict_frame(void);

#endif