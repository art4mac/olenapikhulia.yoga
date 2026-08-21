FROM alpine:3.20
RUN apk add --no-cache rsync
WORKDIR /src
COPY site/ ./site/
# the holding page DOWN_MODE serves instead of the site
COPY down/ ./down/
COPY nginx.conf ./nginx.conf
