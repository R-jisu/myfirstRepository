bin/myapp: obj/myapp.o obj/funcs.o
	gcc -o $@ $^

obj/myapp.o: src/myapp.c
	gcc -o $@ -c $< -I./include

obj/funcs.o: src/funcs.o
	gcc -o $@ -c $< -I./include

clean:
	rm -f bin/maypp
	rm -f obj/*.o
