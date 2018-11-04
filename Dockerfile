FROM parity/parity:v2.1.4

RUN mkdir -p /home/parity/io.parity.ethereum/
VOLUME ["/home/parity/io.parity.ethereum"]

ENTRYPOINT ["/home/parity/entrypoint.sh"]
#ENTRYPOINT ["/home/parity/bin/parity"]

USER root
RUN mkdir -p /etc/mintnet
ADD ./reservedpeers.txt /etc/mintnet/reservedpeers.txt
ADD ./mintnet.toml /etc/mintnet/mintnet.toml
ADD ./mintnet.json /etc/mintnet/mintnet.json
ADD ./entrypoint.sh /home/parity/entrypoint.sh

RUN chmod a+x /home/parity/entrypoint.sh
#RUN chown -hR parity /etc/mintnet
#RUN chown -hR parity /mnt/io.parity.ethereum
#RUN ls -l /mnt/
USER parity
