FROM python:3.8

MAINTAINER Metadrop <hi@metadrop.net>

ENV LAST_UPDATE 2019-05-28

RUN pip install mkdocs mkdocs-material
RUN pip install mkdocs-pdf-export-plugin

EXPOSE 8000

CMD ["mkdocs", "serve"]
