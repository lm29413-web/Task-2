.section bss
.global ram
.lcomm ram, 256

.section .text
.global fill_ram

fill_ram:
    # Store FFh into RAM locations 50H - 58H using indirect addressing

    lea ram+0x50, %eax
    movb $0xFF, (%eax)
    lea ram+0x51, %eax
    movb $0xFF, (%eax)
    lea ram+0x52, %eax
    movb $0xFF, (%eax)
    lea ram+0x53, %eax
    movb $0xFF, (%eax)
    lea ram+0x54, %eax
    movb $0xFF, (%eax)
    lea ram+0x55, %eax
    movb $0xFF, (%eax)
    lea ram+0x56, %eax
    movb $0xFF, (%eax)
    lea ram+0x57, %eax
    movb $0xFF, (%eax)
    lea ram+0x58, %eax
    movb $0xFF, (%eax)

    ret             # Return control back to C program

.section .note.GNU-stack,"",@progbits