FROM continuumio/anaconda3:latest

COPY requirements.txt /code/

WORKDIR /code

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN /opt/conda/bin/conda install jupyter -y --quiet