FROM python:3.13.11
ADD ./requirements.txt /zmqtest/
WORKDIR /zmqtest/
RUN pip install -r requirements.txt
ADD ./communication/  /zmqtest/communication/
CMD ["python","-u","./communication/zmq/streaming/ZMQProducer.py"]