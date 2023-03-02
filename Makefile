.PHONY: all clean

build: all

all: aws

aws: aws.o util/sock_util.o util/http-parser/http_parser.o
	gcc -o aws aws.o util/sock_util.o util/http-parser/http_parser.o -lpthread

aws.o: aws.c
	gcc -c -o aws.o aws.c

util/sock_util.o: util/sock_util.c
	gcc -c -o util/sock_util.o util/sock_util.c

util/http-parser/http_parser.o: util/http-parser/http_parser.c
	gcc -c -o util/http-parser/http_parser.o util/http-parser/http_parser.c

clean:
	-rm -f *~
	-rm -f *.o
	-rm -f aws
	-rm -f util/sock_util.o
	-rm -f util/http_parser/http_parser.o