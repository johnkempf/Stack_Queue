OBJS = da.o cda.o stack.o queue.o integer.o tester.o 
OOPTS = -Wall -Wextra -g -c
LOPTS = -Wall -Wextra -g

all : tester

tester : $(OBJS)
		gcc $(LOPTS) $(OBJS) -o tester

da.o : da.c da.h
		gcc $(OOPTS) da.c

cda.o : cda.c cda.h
		gcc $(OOPTS) cda.c

stack.o : stack.c stack.h
		gcc $(OOPTS) stack.c

queue.o : queue.c queue.h
		gcc $(OOPTS) queue.c

integer.o : integer.c integer.h
		gcc $(OOPTS) integer.c

tester.o : tester.c integer.h 
		gcc $(OOPTS) tester.c

test : tester
		./tester

valgrind : tester
		valgrind ./tester

clean	:
		rm -f $(OBJS) tester
		rm -f *.o