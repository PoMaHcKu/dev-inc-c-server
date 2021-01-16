all:
		g++ -O3 -s hello.cpp -o hello.cgi /usr/lib/x86_64-linux-gnu/libcgicc.a
clean:
		rm -f hello.cgi