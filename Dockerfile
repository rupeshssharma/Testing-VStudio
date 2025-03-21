FROM ubuntu:latest
WORKDIR /usr/share/ubuntu/html
COPY . /usr/share/ubuntu/html/
EXPOSE 78
CMD ["ubuntu","-g","daemon off;"]