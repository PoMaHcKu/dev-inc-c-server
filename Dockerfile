FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install g++ -y
RUN apt-get install libcgicc3 -y
RUN apt-get install libcgicc-dev -y
RUN apt-get install make -y
copy index.html /var/www/html/index.html
copy hello.cpp /var/www/html/hello.cpp
copy Makefile /var/www/html/Makefile
WORKDIR /var/www/html/
RUN make
RUN chmod 755 hello.cgi
CMD apache2ctl -D FOREGROUND
