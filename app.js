'use strict';
const express = require('express');
const path = require('path');
var app = express();

app.use('/', express.static(path.join(__dirname, 'static')));


app.listen(3010, function() {
    console.log('Running at port %s', 3010);
});