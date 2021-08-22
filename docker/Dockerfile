FROM python:3.9-slim-buster

RUN apt-get update
RUN apt-get install curl --yes

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
ENV PATH="${PATH}:/root/.poetry/bin"
RUN poetry config virtualenvs.create false

ADD pyproject.toml /
RUN poetry install