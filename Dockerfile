FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

VOLUME ["/uploads"]

EXPOSE 5000

CMD ["python", "app.py"]
