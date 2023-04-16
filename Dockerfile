FROM python:3.6.0b3
RUN apt update
RUN apt-get install -y python3-opencv
WORKDIR /Cloudiod
COPY . /Cloudiod
RUN pip install -r requirements.txt
ADD client /Cloudiod/client
ADD yolo_tiny_configs /Cloudiod/yolo_tiny_configs
ADD Cloudiod_server.py /Cloudiod
EXPOSE 5000
CMD python ./Cloudiod/Cloudiod_server.py
