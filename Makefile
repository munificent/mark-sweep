.PHONY : clean 

mas : main.c
	gcc  -ggdb -std=gnu99  main.c -o mas

clean :
	rm -f mas *~

run : mas
	valgrind  --leak-check=yes mas

