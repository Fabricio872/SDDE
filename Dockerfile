FROM ubuntu:focal

RUN apt update && apt upgrade -y
RUN apt install php-cli -y
RUN apt install php-zip php-xml php-mysql php-gd php-curl -y

CMD tail -f /dev/null
