FROM python:buster
MAINTAINER brandon@rancherfederal.com

# create the app user
RUN addgroup -S d1090exp && adduser -S d1090exp -G d1090exp

# install the package instead of compiling it like the upstream
RUN pip install dump1090exporter

# switch to non-root user
USER d1090exp

WORKDIR /tmp

EXPOSE 9105

ENTRYPOINT ["python", "-m", "dump1090exporter"]
