FROM python:3.4-alpine

RUN pip install flask celery redis

WORKDIR /code
ADD . .

CMD [ "python", "app.py" ]
