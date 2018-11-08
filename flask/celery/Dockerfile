FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install flask celery redis
CMD [ "celery", "-A", "app.celery", "worker" ]
