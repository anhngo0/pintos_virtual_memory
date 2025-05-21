#ifndef VM_SWAP_H
#define VM_SWAP_H

#include "threads/synch.h"
#include "devices/block.h"
#include <bitmap.h>
#include "threads/vaddr.h"

#define SWAP_DISK_SECTOR   PGSIZE/BLOCK_SECTOR_SIZE

// The block where the swapped pages are read
// or written from/to
 static struct block *swap_block;
 static struct lock swap_lock; 

// A bitmap indicate whether page is available for swapping a page or not
static struct bitmap *swap_bitmap; 

void swap_init();
void swap_in(size_t index, void *kpage);
size_t swap_out(void *kpage);

#endif