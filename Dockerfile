FROM python:3.11-alpine

LABEL maintainer="Metadrop <hi@metadrop.net>"

ENV LAST_UPDATE=2024-09-05

RUN pip install --no-cache-dir mkdocs mkdocs-material mkdocs-pdf-export-plugin

EXPOSE 8000

COPY init /app/init
RUN chmod 755 /app/init

ENTRYPOINT ["/app/init"]
CMD ["serve"]
