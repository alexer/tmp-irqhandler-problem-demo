
.section .text

.thumb_func
.global _start
_start:
    bl main

.thumb_func
hang:   b .

