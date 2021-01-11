FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install g++ -y
RUN apt-get install libcgicc3 -y
RUN apt-get install libcgicc-dev -y
RUN apt-get install make -y
copy index.html /var/www/html
copy conf/apache2.conf /etc/apache2/apache2.conf
copy conf/cgid.conf /etc/apache2/mods-enabled/
copy conf/cgid.load /etc/apache2/mods-enabled/
copy conf/cgi.load /etc/apache2/mods-enabled/
RUN mkdir /var/www/cgi-bin
copy Makefile /var/www/cgi-bin/
copy hello.cpp /var/www/cgi-bin/
WORKDIR /var/www/cgi-bin
RUN make
RUN chmod 755 hello.cgi
RUN rm Makefile hello.cpp
CMD apache2ctl -D FOREGROUND

