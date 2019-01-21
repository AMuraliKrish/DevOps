FROM qnib/pytest
USER root
#COPY script.sh /script.sh
#RUN ["chmod", "+x", "/script.sh"]
WORKDIR /
#ENTRYPOINT /script.sh
