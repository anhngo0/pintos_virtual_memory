#ifndef VM_PAGE_H
#define VM_PAGE_H

#include <threads/thread.h>
#include <threads/vaddr.h>
#include <filesys/off_t.h>

#define MAX_STACK 1 << 23  // stack's linit is 8MB

enum page_type {
    VM_BIN,
    VM_ANON
};

/* Contains info about pages to be loaded from executable */
struct file_info{
	off_t offset;
	size_t read_bytes;
    size_t zero_bytes;
	struct file *f;
};

/* Supplementary page table entry that holds information about pages */
struct spt_entry
{
	void *page_addr; /* virtual address of page*/
	void *frame_addr; /*  physical address of frame */
	
    bool isLoaded;  /* page is loaded in memory or not */ 
	bool writeable; /* page is writeable or not */
	bool is_pinned;  /* page must not be evicted if true*/
	
	enum page_type type; 
	struct file_info f_info;
	int index_swap;
	struct hash_elem helem;
};

void spt_init(struct hash* page_table);  
void create_spt_entry(void *upage, struct file *f, off_t offset, enum page_type type,   
                    size_t read_bytes, size_t write_bytes, bool writeable);
struct spt_entry *spt_find_entry(struct thread* t,void *upage);
void spt_remove(struct hash* spt);
bool page_load(struct spt_entry *spt_entry);
bool load_from_file(struct spt_entry* entry);
bool load_from_disk(struct spt_entry* entry);
bool stack_growth(void *fault_addr);

#endif