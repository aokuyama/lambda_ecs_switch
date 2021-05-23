FROM python:3.9-alpine

RUN apk add --no-cache g++ autoconf automake make cmake libtool curl-dev libexecinfo-dev
RUN pip install awslambdaric boto3

ARG APP_DIR="/app"
WORKDIR ${APP_DIR}
COPY ./app ${APP_DIR}
RUN chmod 755 /app/entry.sh

ENTRYPOINT ["/bin/ash", "/app/entry.sh"]
CMD ["app.handler"]
