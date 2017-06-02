
.section .text

.word  _start
.word  IRQHandler

.weak      IRQHandler
.thumb_set IRQHandler, hang

