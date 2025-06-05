#ifndef VM_SWAP_H
#define VM_SWAP_H

#include "threads/synch.h"
#include "devices/block.h"
#include <bitmap.h>
#include "threads/vaddr.h"
#include "userprog/exception.h"

// #define SECTORS_PER_PAGE   PGSIZE/BLOCK_SECTOR_SIZE
#define SECTORS_PER_PAGE   8



// The block where the swapped pages are read
// or written from/to
 static struct block *swap_block;
 static struct lock swap_lock; 

// track free/used slots in swap
static struct bitmap *swap_bitmap; 

void swap_init();
void swap_in(size_t index, void *kpage);
size_t swap_out(void *kpage);

#endif