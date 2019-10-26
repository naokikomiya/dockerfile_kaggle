FROM kaggle/python:latest

RUN pip install --upgrade pip && \
    pip install autopep8 && \
    pip install japanize-matplotlib && \
    pip install kaggle && \
    pip install pyls && \
    pip install python-language-server && \
    rm -rf /root/.cache/pip/*

VOLUME /root/dev

WORKDIR /root/dev
