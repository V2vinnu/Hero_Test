FROM ubantu
WORKDIR /app
RUN apt-get update 
RUN apt-get install –y nginx