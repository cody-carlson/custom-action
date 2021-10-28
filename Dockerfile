FROM ubuntu:20.04

RUN apt install -y python3      

COPY hello.py /usr/local/bin/hello.py
RUN chmod +x /usr/local/bin/hello.py

ENTRYPOINT ["hello.py"]