FROM alpine:3.9

RUN apk update && \
    apk upgrade 

RUN apk add openjdk8=8.252.09-r0

RUN apk add --no-cache wget git unzip

WORKDIR /root

RUN wget -q https://github.com/Ifsttar/NoiseModelling/releases/download/v3.4/NoiseModelling_3.4.zip

RUN unzip NoiseModelling_3.4.zip

RUN rm NoiseModelling_3.4.zip

WORKDIR /root/NoiseModelling_3.4

RUN chmod +x ./bin/startup.sh

EXPOSE 9580

CMD ["./bin/startup.sh"]

