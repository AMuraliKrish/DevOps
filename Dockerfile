FROM qnib/pytest
USER root
COPY $DIR/script.sh /root/script.sh
RUN ["chmod", "+x", "/root/script.sh"]
WORKDIR /root/
ENTRYPOINT /root/script.sh
