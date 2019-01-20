FROM qnib/pytest
USER root
ADD script.sh /root/script.sh
RUN ["chmod", "+x", "/root/script.sh"]
ENTRYPOINT /root/script.sh
