FROM python

# install os modules
RUN apt update -y && \
    apt install telnet -y && \
    rm -rf /var/lib/apt/lists/*
# copy source code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirements.txt /data-copier

#Install application dependencies
RUN pip install -r /data-copier/requirements.txt
