FROM alpine:3.18.3
WORKDIR /app
COPY . .
RUN /sbin/apk update
RUN /sbin/apk add python3 py3-pip
RUN /usr/bin/pip3 install -r requirements.txt
CMD /usr/bin/python3 /app/goat.py