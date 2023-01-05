FROM ubuntu
WORKDIR /app
RUN apt-get update 
RUN apt-get install nginx -y