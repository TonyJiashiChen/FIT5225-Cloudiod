FROM python:3.8.10
RUN apt-get update
RUN apt-get install -y python3-opencv
RUN pip install --upgrade pip
WORKDIR /Cloudiod
COPY . /Cloudiod
RUN pip install -r requirements.txt
RUN pip install numpy
RUN pip install opencv-python
ADD client /Cloudiod/client
ADD yolo_tiny_configs /Cloudiod/yolo_tiny_configs
ADD Cloudiod_server.py /Cloudiod
EXPOSE 5000
CMD ["python", "/Cloudiod/Cloudiod_server.py"]
