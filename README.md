# MicroProfile Metrics with Prometheus and Grafana

This project contains an example setup for MicroProfile metrics as natively supported by OpenLiberty.
The capturing and storing of metrics happens in a time-series database called Prometheus.
Grafana can connect to Prometheus to fetch the monitoring data and display it in nice dashboards.
This project contains a dashboard provided by the OpenLiberty team (https://grafana.com/grafana/dashboards/11706).
It contains all technical metrics exposed out of the box by the app-server via MicroProfile.

## Running the example

```
./gradlew build
docker-compose up
```

The Grafana dashboard can be accessed via http://localhost:3000/d/websphere-liberty-m2/open-liberty-mpmetrics-2-x?orgId=1&refresh=5s.

