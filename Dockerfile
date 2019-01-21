FROM qnib/pytest
USER root
ADD $DIR/script.sh /root/script.sh
RUN ["chmod", "+x", "/root/script.sh"]
WORKDIR /root/
#ENTRYPOINT /root/script.sh
