FROM python:3.8

MAINTAINER Metadrop <hi@metadrop.net>

ENV LAST_UPDATE 2022-03-01

RUN pip install mkdocs mkdocs-material
RUN pip install mkdocs-pdf-export-plugin

EXPOSE 8000

COPY init /app/init
RUN chmod 755 /app/init

ENTRYPOINT ["/app/init"]
CMD ["serve"]
