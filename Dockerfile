FROM jupyter/minimal-notebook

# Install AWS Tools
RUN pip install boto3 awscli

# Install LaTeX

RUN sudo apt-get -y install texlive-full  

