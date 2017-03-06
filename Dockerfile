FROM lsiobase/alpine.python:3.5
MAINTAINER hxucaa

# add local files
COPY plexpy-1.4.16/ /opt/plexpy

# ports and volumes
VOLUME /config /logs
EXPOSE 8181

ENTRYPOINT ["s6-setuidgid", "abc", "python", "/opt/plexpy/PlexPy.py", "--datadir", "/config"]

