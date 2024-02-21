.global main, start, end
start:
la x5, dev_irq_handler
csrw 0x305, x5
lla x5, _main
csrw 0x341, x5

_main:

csrr x5, 0x304
li x2, 0x800
or x5, x5, x2
csrw 0x304, x5

csrrsi x5, mstatus, 0x8

lui x2, 0x300 
addi x1, x0, 0xc
j main
j end
