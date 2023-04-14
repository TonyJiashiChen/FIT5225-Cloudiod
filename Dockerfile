FROM python:3.6.0b4-alpine
WORKDIR /Cloudiod
COPY . /Cloudiod
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./Cloudiod_server.py
