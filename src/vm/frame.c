#include "frame.h"
#include "list.h"
#include "page.h"
#include "swap.h"
#include "filesys/file.h"
#include "threads/palloc.h"
#include "threads/malloc.h"
#include "userprog/pagedir.h"
#include "userprog/syscall.h"

void free_frames (bool is_loaded, void* upage)
{
    if(is_loaded){
        // printf("");
    }
}