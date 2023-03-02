Simple server for sending files using the POSIX API, some improvements could be
made since the send/receive operations are still blocking unfortunately
(meaning it's not fully asynchronous despite using some functions that have
that functionality).
Check it out:

```bash
make
./aws
```

And then use whatever method you want to request files from the server, by
default it's configured to run on localhost:8888. So one way to try it out is:

```bash
wget "http://localhost:8888/README.md"
```

This will download the document you're currently reading, so you can read it
while you... I'll stop.