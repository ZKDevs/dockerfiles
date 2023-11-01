FROM python:3.12.0b1-slim AS base

ARG WORKDIR=/app

WORKDIR ${WORKDIR}

RUN pip install fastapi uvicorn

FROM base AS run

COPY . /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
