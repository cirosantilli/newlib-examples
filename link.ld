ENTRY(mystart)
SECTIONS
{
  . = 0x40000000;
  .ro : {
    */startup.o(.text)
    *(.text)
    *(.rodata)
  }
  .rw : {
      *(.data)
      *(.bss)
      *(COMMON)
  }
  heap_low = .;
  . = . + 0x1000000;
  heap_top = .;
  . = . + 0x1000000;
  stack_top = .;
}

