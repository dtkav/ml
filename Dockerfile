FROM b.gcr.io/tensorflow/tensorflow:latest
RUN pip install sklearn

# prebuild matplotlib font cache
RUN python -c "import matplotlib.pyplot as plt; exit()"

WORKDIR /ml
