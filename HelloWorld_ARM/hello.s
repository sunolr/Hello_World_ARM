//run using:
//$ make
//$ gdb hello
.text
.global _start
_start:
    // ARM 64  "Hello, World!" program
    mov x8, #64            // 64 is sys_write
    mov x0, #1             // 1 is stdout
    ldr x1, =msg           // pointer to the message
    ldr x2, =len           // length of the message
    svc #0                 // system call

    // Exit the program
    mov x8, #93            // 93 is sys_exit
    mov x0, #0             // exit status coll
    svc #0                 // system call

// Data section for the message
.data
.global msg
msg:
    .ascii "Hello, World!\n"  // the message to print
len = . - msg                // length of the message

