# C++ WebServer

### 1. Preparation

You only need a docker to run this app.

### 2. Get started

Copy all files from the repothitory.
```
git clone https://github.com/PoMaHcKu/dev-inc-c-server
```
Open a terminal.

Windows: ``` win + R ``` then ```cmd```

If you have Linux you know how to open a terminal.

Go to the directory with project and write the commands bellow:
```
docker build -t name_image:1.0 .
docker run -d -p 8080:80 name_image:1.0
```
Port 8080 must be free, or write another port in the command.
