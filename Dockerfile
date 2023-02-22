FROM adoptopenjdk/openjdk11:x86_64-ubuntu-jre-11.0.18_10

RUN apt update && apt upgrade -y

RUN apt install wget unzip

WORKDIR /root

RUN wget -q https://github.com/Universite-Gustave-Eiffel/NoiseModelling/releases/download/v4.0.0/NoiseModelling_4.0.0.zip

RUN unzip NoiseModelling_4.0.0.zip

RUN rm NoiseModelling_4.0.0.zip

WORKDIR /root/NoiseModelling_4.0.0

RUN chmod +x ./bin/startup_linux_mac.sh

EXPOSE 9580

CMD ["./bin/startup_linux_mac.sh"]
