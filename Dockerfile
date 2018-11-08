FROM parity/parity:v2.1.4

ARG BASE_PATH=/home/parity/.stinet/io.parity.ethereum
ARG CONFIG_PATH=/etc/stinet
ENV BASE_PATH=$BASE_PATH

RUN mkdir -p $BASE_PATH
VOLUME [$BASE_PATH]

EXPOSE 30311
EXPOSE 30303
EXPOSE 8540
EXPOSE 8450

ENTRYPOINT ["/entrypoint.sh"]

USER root
RUN mkdir -p $CONFIG_PATH
COPY ./reservedpeers.txt $CONFIG_PATH/reservedpeers.txt
COPY ./mynet.toml $CONFIG_PATH/mynet.toml
COPY ./mynet.json $CONFIG_PATH/mynet.json
COPY ./node.pwds $CONFIG_PATH/node.pwds
COPY ./entrypoint.sh /entrypoint.sh

RUN chmod a+x /entrypoint.sh
USER parity
