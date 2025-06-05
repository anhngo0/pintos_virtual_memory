  #include <stdio.h>
  #include <bitmap.h>
  #include "vm/swap.h"

  size_t swap_size; /*number of sectors on the swap block.*/
  size_t max_swap_index; /*number of page-sized swap slots*/

  static size_t swap_out_count = 0;
  static size_t swap_in_count = 0;
  void swap_init()
  {
    printf("start swap init()\n");
    swap_block = block_get_role(BLOCK_SWAP);
    
    if(swap_block == NULL)
    {
      PANIC("error: get block failed");
      return;
    }

    swap_size = block_size(swap_block);
    max_swap_index = swap_size / SECTORS_PER_PAGE;
    printf("sector per page is %zu\n", SECTORS_PER_PAGE);
    printf("swap size is %zu\n", swap_size);
    printf("max swap index is %zu\n", max_swap_index);
    if (max_swap_index == 0) {
      PANIC("Swap device has 0 usable slots\n");
    }

    swap_bitmap = bitmap_create(max_swap_index);
    if(swap_bitmap == NULL)
    {
      printf("bitmap_create error\n");
      return;
    }
    bitmap_set_all(swap_bitmap, 0);
    printf("swap success\n");
    lock_init(&swap_lock);
  }

  void swap_in(size_t index, void* frame)
  {
  
    lock_acquire(&swap_lock);
    // printf("swap out start\n");
    
    if(bitmap_test(swap_bitmap, index) == 0)
      PANIC("Swap with free index");

    bitmap_reset(swap_bitmap, index);  // Sets the bit to 0 (free)

    // printf("marked as swap in successfully\n");
    block_sector_t sect;
    for(sect=0; sect < SECTORS_PER_PAGE; sect++)
    { 
      block_read(swap_block,index * SECTORS_PER_PAGE + sect, frame + sect * BLOCK_SECTOR_SIZE);
      ++swap_in_count;  
    }
      // printf("read into free frame successfully\n");
    lock_release(&swap_lock);
  }

  size_t swap_out(void* frame)
  {
    lock_acquire(&swap_lock);
    // printf("swap out start\n");
    /*Finds the first free bit in the bitmap and flips it to used */
    size_t free_i = bitmap_scan_and_flip(swap_bitmap, 0, 1, 0);

    if (free_i == BITMAP_ERROR)
    {
      printf("swap_in_count = %zu\n", swap_in_count); 
      printf("swap_out_count = %zu\n", swap_out_count); 
      printf("Used swap slots: %zu / %zu\n",
        bitmap_count(swap_bitmap, 0, max_swap_index, true),
        max_swap_index);
      exception_print_stats();
      PANIC("Swap block is full — no free slot");
    }

    if (free_i >= max_swap_index)
      PANIC("Invalid swap index %zu while max is %zu\n",free_i, max_swap_index);

    if(free_i == BITMAP_ERROR)
      PANIC("block is full");
    // printf("scan and flip swap slot successfully\n");
    block_sector_t sect;
    for(sect=0; sect <  SECTORS_PER_PAGE; sect++)
    { 
      block_write(swap_block,free_i * SECTORS_PER_PAGE + sect, frame + (sect * BLOCK_SECTOR_SIZE));
      ++swap_out_count;
    }
    // printf("write in swap slot successfully\n");
    lock_release(&swap_lock);
    return free_i;
  }
