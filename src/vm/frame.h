#ifndef VM_FRAME_H
#define VM_FRAME_H

#include "threads/thread.h"

struct frame {
    void *page_addr;
    void *frame_addr;
    struct list_elem elem;
};

void free_frames(bool isLoaded, void*upage);

#endif