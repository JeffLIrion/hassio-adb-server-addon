FROM ubuntu:latest

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y android-tools-adb jq

RUN mkdir -p /root/.android

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
