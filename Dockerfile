FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install fastapi uvicorn

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080", "--reload"]