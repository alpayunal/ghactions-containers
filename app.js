// import bodyParser from 'body-parser';
var bodyParser = require('body-parser');
var express = require ('express');

import eventRoutes from './routes/events.js';

const app = express();

app.use(bodyParser.json());

app.use(eventRoutes);

app.listen(process.env.PORT);
