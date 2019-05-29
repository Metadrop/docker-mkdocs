ARG PYTHON_TAG

FROM python:${PYTHON_TAG}

MAINTAINER Metadrop <hi@metadrop.net>

ENV LAST_UPDATE 2019-05-28

RUN pip install mkdocs

VOLUME ["/workspace"]
WORKDIR /workspace
EXPOSE 8000

COPY init /app/init
RUN chmod 755 /app/init

ENTRYPOINT ["/app/init"]
CMD ["serve"]
