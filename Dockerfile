FROM ubuntu:focal

RUN apt update && apt upgrade -y
RUN apt install php-cli -y
RUN apt install php-zip php-xml php-mysql php-gd php-curl -y
RUN apt install wget -y
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony
RUN apt install composer -y

CMD tail -f /dev/null
