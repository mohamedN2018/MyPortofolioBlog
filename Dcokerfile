# pull official base image
FROM python:3.10.3-alpine

# set work directory
WORKDIR /usr/src/app

# install psycopg2
RUN apk update \
    && apk add --virtual build-dependencies build-base gcc python3-dev musl-dev libffi-dev openssl-dev

RUN apk add --update tzdata
ENV TZ=Africa/Cairo

# work dir
WORKDIR /usr/src/app

# install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install pipenv

COPY . .

RUN pipenv lock --requirements > requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 80

CMD ["gunicorn", "--chdir", "/usr/src/app", "--bind", ":80", "tracer.wsgi:application"]
