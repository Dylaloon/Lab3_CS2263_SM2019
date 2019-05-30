COMPILER = gcc
C_FLAGS = -Wall -Wextra
# TODO: add targets to compile LinkedList.c
LinkedList : Stack.o
			$(COMPILER) $(C_FLAGS) -o  LinkedList Stack.o 

Stack.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c -g
# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data
test_cases: tests

tests: test1 test2 test3

test1: LinkedList
	./LinkedList < Data/test1.input > test1.result

test2: LinkedList
	 ./LinkedList < Data/test2.input > test2.result

test3: LinkedList
	./LinkedList < Data/test3.input > test3.result
# TODO: add a target that can run all the tests above.
