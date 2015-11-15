JetBrains Youtrack docker image
=========================

Issue Tracking and Project Management Tool from JetBrains

How to use the image
--------------------
Youtrack stores its data in the `/data/youtrack` directory inside the container. It's recommended to mount it:
```
docker run -p 8080:8080 -v `pwd`/youtrack:/data/youtrack sjoerdmulder/youtrack:latest
```
