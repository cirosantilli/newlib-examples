.global mystart
mystart:
    ldr x0, =stack_top
    mov sp, x0
    bl main
    b .
