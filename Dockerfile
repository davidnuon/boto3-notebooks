FROM python:3.6
 
RUN mkdir /work
WORKDIR /work

COPY requirements.txt /tmp
# Install AWS Tools

# Install LaTeX
RUN apt-get update
RUN apt-get -y install texlive-full
RUN pip3 install -r /tmp/requirements.txt
ENTRYPOINT python -m jupyter notebook --allow-root --port=8888 --ip=0.0.0.0 notebooks
