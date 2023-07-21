FROM ubuntu:22.04

ENV TZ=Asia/Shanghai
RUN apt update && apt install git -y
RUN apt install sqlite3 wget -y
RUN adduser -u 1000 --system --group --disabled-password --shell /bin/bash --home /data --gecos 'Git Version Control' git
RUN mkdir -p /app && cd /app && wget -O gitea https://dl.gitea.com/gitea/1.17.3/gitea-1.17.3-linux-amd64 && chmod +x gitea

COPY setup.sh /tmp/setup.sh
COPY app.ini /tmp/app.ini

RUN chown -R git:git /app 

ENTRYPOINT ["/bin/bash","/tmp/setup.sh"]