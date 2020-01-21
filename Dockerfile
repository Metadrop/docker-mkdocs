FROM python:3.6

MAINTAINER Metadrop <hi@metadrop.net>

ENV LAST_UPDATE 2019-05-28

RUN pip install mkdocs mkdocs-material

EXPOSE 8000

CMD ["mkdocs", "serve"]
