FROM python:3.10-alpine
LABEL authors="raffa"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/

CMD ["python", "app/main.py"]