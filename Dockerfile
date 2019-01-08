FROM alpine
WORKDIR hipstafy
COPY hipstafy.sh .
RUN apk --no-cache add curl
RUN apk --no-cache add file
RUN apk --no-cache add imagemagick

ENTRYPOINT ./hipstafy.sh $0
