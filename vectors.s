# 1 "vectors.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "vectors.S"
.cpu cortex-m0
.thumb

.thumb_func
.global _start
_start:
stacktop: .word 0x20001000
.word reset
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang
.word hang

.thumb_func
reset:
    bl notmain
    b hang

.thumb_func
hang: b .

.thumb_func
.globl PUT32
PUT32:
    str r1,[r0]
    bx lr
