FROM qnib/pytest
USER root
ADD script.sh /root/script.sh
WORKDIR /root/
