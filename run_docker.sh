#!/bin/bash
set -e

if [ -f ./gradlew ]; then
	./gradlew build
else
	./mvnw package
fi

# Java EE 7 servers
#docker run --rm --name appsvr -p 80:8080 -v $(pwd)/build/libs/testapp.war:/opt/jboss/wildfly/standalone/deployments/testapp.war jboss/wildfly:10.1.0.Final /opt/jboss/wildfly/bin/standalone.sh --server-config=standalone-full.xml -b "0.0.0.0"
#docker run --rm --name appsvr -p 80:9080 -p 443:9443 -v $(pwd)/build/libs/testapp.war:/config/dropins/testapp.war websphere-liberty:javaee7
#docker run --rm --name appsvr -p 9060:9060 -p 80:9080 -p 7777:7777 -v $(pwd)/build/libs/testapp.war:/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/monitoredDeployableApps/servers/server1/testapp.war 38leinad/websphere-9
#docker run --rm --name appsvr -p 80:8080 -v $(pwd)/build/libs/testapp.war:/usr/local/tomee/webapps/testapp.war tomee:8-jre-7.1.0-plus

# Java EE 8 servers
#docker run --rm --name appsvr -p 80:8080 -v $(pwd)/build/libs/testapp.war:/opt/jboss/wildfly/standalone/deployments/testapp.war jboss/wildfly:14.0.0.Final /opt/jboss/wildfly/bin/standalone.sh --server-config=standalone-full.xml -b "0.0.0.0" -Dee8.preview.mode=true
#docker run --rm --name appsvr -p 80:8080 -v $(pwd)/build/libs/testapp.war:/glassfish5/glassfish/domains/domain1/autodeploy/testapp.war oracle/glassfish:5.0
#docker run --rm --name appsvr -p 80:8080 -v $(pwd)/build/libs/testapp.war:/opt/payara5/glassfish/domains/domain1/autodeploy/testapp.war payara/server-full:5-SNAPSHOT
docker run --rm --name appsvr -p 80:9080 -p 443:9443 -v $(pwd)/build/libs/testapp.war:/config/dropins/testapp.war openliberty/open-liberty:19.0.0.12-full-java13-openj9-ubi
#docker run --rm --name appsvr -p 80:8080 -v $(pwd)/build/libs/testapp.war:/usr/local/tomee/webapps/testapp.war tomee:8-jre-8.0.0-M1-plume
