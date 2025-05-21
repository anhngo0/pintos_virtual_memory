#include <stdio.h>
#include <bitmap.h>
#include "vm/swap.h"

size_t swap_size;

void swap_init()
{
  swap_block = block_get_role(BLOCK_SWAP);;
  if(swap_block == NULL)
  {
    printf("error: get block failed\n");
    return;
  }
  swap_bitmap = bitmap_create(1024);
  if(swap_bitmap == NULL)
  {
    printf("bitmap_create error\n");
    return;
  }
  bitmap_set_all(swap_bitmap, 0);
  lock_init(&swap_lock);
}

void swap_in(size_t index, void* frame)
{
 
  lock_acquire(&swap_lock);
  if(bitmap_test(swap_bitmap, index) == 0)
    PANIC("Swap with free index");
  bitmap_flip(swap_bitmap, index);
  block_sector_t sect;
	for(sect=0; sect<SWAP_DISK_SECTOR; sect++)
	{ 
		block_read(swap_block,index *SWAP_DISK_SECTOR + sect, frame + sect * BLOCK_SECTOR_SIZE);
    }
  lock_release(&swap_lock);
}

size_t swap_out(void* frame)
{
  lock_acquire(&swap_lock);
  size_t free_i = bitmap_scan_and_flip(swap_bitmap, 0, 1, 0);

  if(free_i == BITMAP_ERROR)
    PANIC("block is full");
  
    block_sector_t sect;
    for(sect=0; sect< 8; sect++)
	{ 
		block_write(swap_block,free_i * 8 + sect, frame + (sect * 512));
    }
  lock_release(&swap_lock);
  return free_i;
}
