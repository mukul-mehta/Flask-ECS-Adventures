FROM python:3.7

# Set unbuffered output to make sure all logs are printed and not stuck in buffer
ENV PYTHONUNBUFFERED 1

ADD . /c3po/
WORKDIR /c3po

RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "uwsgi", "--ini", "config.ini" ]
