FROM python:3.8-bullseye

COPY . /onnx-olive
WORKDIR /onnx-olive

RUN python -m pip install --upgrade pip
RUN pip install onnxruntime-openvino==1.12.0
RUN pip install mlperf_loadgen --extra-index-url https://olivewheels.azureedge.net/test
RUN pip install -e .

CMD ["bash"]