From ubuntu:latest
MAINTAINER Gokul
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
copy . /testFlask
WORKDIR /testFlask
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
