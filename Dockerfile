FROM kaggle/python:latest

RUN cd /usr/local/src && git clone https://github.com/scikit-learn/scikit-learn.git && \
    cd scikit-learn && python setup.py build && python setup.py install && \
    conda update -n base -c defaults conda && \
    conda install h5py && \
    pip install biopython && \
    rm -rf /usr/local/src/* && \
    conda clean -i -l -t -y && \
    rm -rf /root/.cache/pip/*

RUN pip install autopep8 && \
    pip install japanize-matplotlib && \
    pip install kaggle && \
    pip install pyls && \
    pip install python-language-server && \
    rm -rf /root/.cache/pip/*

VOLUME /root/dev

WORKDIR /root/dev