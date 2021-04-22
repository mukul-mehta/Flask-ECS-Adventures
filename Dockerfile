FROM python:3.7-slim
RUN apt-get update \
    && apt-get install gcc -y \
    && apt-get clean

# Set unbuffered output to make sure all logs are printed and not stuck in buffer
ENV PYTHONUNBUFFERED 1

ADD . /app/
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "uwsgi", "--ini", "config.ini" ]
