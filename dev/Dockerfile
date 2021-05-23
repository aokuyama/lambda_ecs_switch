FROM python:3.9-alpine

RUN apk add --no-cache g++ autoconf automake make cmake libtool curl-dev libexecinfo-dev
RUN pip install awslambdaric

ADD https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie /usr/bin/aws-lambda-rie
RUN chmod 755 /usr/bin/aws-lambda-rie
