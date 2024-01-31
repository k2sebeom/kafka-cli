FROM openjdk:8

RUN wget -q https://dlcdn.apache.org/kafka/3.6.1/kafka_2.13-3.6.1.tgz -O /tmp/kafka_2.13-3.6.1.tgz && \
    tar xfz /tmp/kafka_2.13-3.6.1.tgz -C /usr/local && \
    mv /usr/local/kafka_2.13-3.6.1 /usr/local/kafka && \
    rm /tmp/kafka_2.13-3.6.1.tgz

ENV PATH="${PATH}:/usr/local/kafka/bin"

CMD ["tail", "-f", "/dev/null"]