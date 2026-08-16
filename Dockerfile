FROM alpine:3.20
RUN apk add --no-cache rsync
WORKDIR /src
COPY site/ ./site/
COPY nginx.conf ./nginx.conf
