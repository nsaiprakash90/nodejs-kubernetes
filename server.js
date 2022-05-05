'use strict';
const appd = require('appdynamics');

appd.profile({
  controllerHostName: 'controllerces.saas.appdynamics.com',
  controllerPort: 443, 
  controllerSslEnabled: true,
  accountName: 'controllerces',
  accountAccessKey: 'bm9xa03c6d2p', //required
  applicationName: 'nodejsappsailocal',
  tierName: 'Tier1-Kubernetes', 
  nodeName: 'Node1',
  debug: true,
  reuseNode: true,
  reuseNodePrefix: 'some_prefix',
  openTelemetry: {
    enabled: true,
    debug: true,
    collector: {
      url : 'http://central-otel-collector.sai-narasingu-otel.svc.cluster.local:4318/v1/traces' 
    }
  }
});

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello world\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);