'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.get('/ping', (req, res) => {
  res.send('pong');
});

app.get('/hello', (req, res) => {
  res.send({message: 'Hello! White Hat Jr', err_code: 0});
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
