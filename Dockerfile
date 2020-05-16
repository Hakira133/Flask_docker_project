FROM python:3.7.7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

ENV TZ Europe/Moscow

CMD ["python", "app.py"]