FROM python:3

RUN pip install awsebcli && \
    which eb &&\
    eb --version

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

