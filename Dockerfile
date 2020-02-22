FROM openliberty/open-liberty:19.0.0.12-full-java13-openj9-ubi
ADD src/main/docker/ol/server.xml /opt/ol/wlp/usr/servers/defaultServer/
ADD build/libs/testapp.war /config/dropins/