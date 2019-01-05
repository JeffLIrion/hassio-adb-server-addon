ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install requirements for add-on
RUN apk add --no-cache jq

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

COPY update-platform-tools.sh /
RUN chmod a+x /update-platform-tools.sh

RUN /update-platform-tools.sh

CMD [ "/run.sh" ]
