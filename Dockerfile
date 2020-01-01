FROM debian:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* 

RUN wget -O /root/brook https://github.com/txthinking/brook/releases/download/v20200102/brook

COPY ./brook.sh /root/brook.sh

RUN chmod +x /root/brook && chmod +x /root/brook.sh

CMD [ "sh", "-c", "/root/brook.sh" ]