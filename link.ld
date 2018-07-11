SECTIONS
{
  . = 0x10000;
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
  . = . + 0x10000;
  heap_top = .;
  . = . + 0x10000;
  stack_top = .;
}

