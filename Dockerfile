FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip

COPY src/ /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD [ "python3", "app.py" ]