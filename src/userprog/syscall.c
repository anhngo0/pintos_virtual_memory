#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "vm/page.h"

static void syscall_handler (struct intr_frame *);

void
syscall_init (void) 
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
}

static void
syscall_handler (struct intr_frame *f UNUSED) 
{
  printf ("system call!\n");
  switch(*(int*)f->esp)
  {
    case SYS_EXIT:                   /* Terminate this process. */
    {
      if (!is_user_vaddr(f->esp + 4))
        sys_exit(-1);  // Minimal checkint status = *(int *)(f->esp + 4);
      int status = *(int *)(f->esp + 4);
      sys_exit(status);
      break;
    }
  }
}

void sys_exit(int status)
{
	//mark exit status	
  struct thread* cur = thread_current();
	cur->exit_status = status;
	printf("%s: exit(%d)\n",cur->name,cur->exit_status);
	thread_exit();
}

