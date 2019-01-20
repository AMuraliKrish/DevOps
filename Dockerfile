FROM qnib/pytest
ADD script.sh /root/script.sh
ENTRYPOINT sh /root/script.sh
