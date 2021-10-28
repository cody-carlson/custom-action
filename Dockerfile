FROM ubuntu:18.04

RUN apt-get update &&   \
apt-get install -y      \
python3.6               \
python3-distutils       \
python3-pip python3-apt

COPY hello.py /usr/local/bin/hello.py
RUN chmod +x /usr/local/bin/hello.py

ENTRYPOINT ["hello.py"]