# C++ WebServer

### 0. Tools

#### You will touch the follow technologies.

###### C++ (cgicc)
###### HTML/CSS
###### Google cloud (linux vm, vim)
###### Docker
###### Apache2 Web Server


### 1. Task 1 - Hacking.

###### Copy the repository on you computer:
```
git clone https://github.com/PoMaHcKu/dev-inc-c-server
```
###### Create index.html file in the root of project directory. The file must has a html form with post method. And form must has a input element (or input area) with attribute name and submit button in the html form.
###### Edit file script.cpp. There is the function called getInt in the script file. Write your code in this function.
###### Create a CSS style for the form. FOR your taste.
###### Create repository and push the project. You need it later.

### 2. Deploy
###### To be continue...

Go to the directory with project and write the commands bellow:
```
docker build -t name_image:1.0 .
docker run -d -p 8080:80 name_image:1.0
```
Port 8080 must be free, or write another port in the command.
