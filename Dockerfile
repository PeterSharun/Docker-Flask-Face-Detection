FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]