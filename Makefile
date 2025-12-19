GCC := gcc
Target := asem

.PHONY: all clean

all: $(Target)

asem.o : asem.s
	as --64 $< -o $@

asem : asem.o
	$(GCC) -nostdlib -no-pie $< -o $@


clean:
	rm *.o
	rm $(Target)
