FROM python:3.10-buster

WORKDIR /app
RUN chmod 777 /app

RUN apt-get update
RUN apt-get install git
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
