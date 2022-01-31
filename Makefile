TARGET = teszt
CC = gcc
CFLAGS = -fopenmp
.PHONY: clean

all: $(TARGET).bin
%.bin: %.c
	$(CC) $(CFLAGS) -o $@ $<
clean:
	rm -f *.bin
