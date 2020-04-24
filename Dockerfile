FROM alpine:latest

LABEL version="1.0.0"

LABEL com.github.actions.name="SAM Deploy Action"
LABEL com.github.actions.description="Deploy AWS SAM Stack"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="purple"

LABEL repository="https://github.com/falnyr/sam-deploy-action"
LABEL homepage="https://github.com/falnyr/sam-deploy-action"
LABEL maintainer="Jan Richter <falnyr@gmail.com>"

RUN apk update && apk add -qU bash aws-cli --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
