ARG PYTHON_TAG

FROM python:${PYTHON_TAG}

RUN pip install mkdocs
EXPOSE 8080
CMD ["mkdocs", "serve"]
