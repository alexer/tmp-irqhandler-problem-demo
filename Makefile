
PREFIX = arm-none-eabi-
AS = $(PREFIX)gcc
CC = $(PREFIX)gcc
OBJDUMP = $(PREFIX)objdump

CFLAGS = -nostartfiles

clean:
	rm -f both.s *.o separate combined

both.s: vectors.s startup.s
	cat $^ > both.s

%.o: %.s
	$(CC) -c $^ -o $@

%.o: %.c
	$(CC) -c $^ -o $@

separate: vectors.o startup.o main.o
	$(CC) $(CFLAGS) $^ -o $@

combined: both.o main.o
	$(CC) $(CFLAGS) $^ -o $@

%.syms: %.o
	$(OBJDUMP) -t $<

