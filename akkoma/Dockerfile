FROM alpine:latest
LABEL org.opencontainers.image.source https://github.com/monkeyslayer56/containers
COPY setup.sh /tmp/setup.sh
RUN /tmp/setup.sh
WORKDIR /opt/akkoma
USER akkoma
CMD /opt/akkoma/bin/pleroma_ctl migrate && /opt/akkoma/bin/pleroma start
