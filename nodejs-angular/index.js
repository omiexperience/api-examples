const express = require("express");
const bodyParser = require('body-parser');
const webpack = require("webpack");
const webpackMiddleware = require("webpack-dev-middleware");
const config = require("./config/webpack.config.js");
const request = require("request");

var app = express();
app.use(bodyParser.json());

var compiler = webpack(config);

var OMIE_APP_KEY = '1560731700';
var OMIE_APP_SECRET = '226dcf372489bb45ceede61bfd98f0f1';

app.get("/api/clientes", function (req, res) {
  var params = {
    "call": "ListarClientes",
    "app_key": OMIE_APP_KEY,
    "app_secret": OMIE_APP_SECRET,
    "param": [{
      "pagina": 1,
      "registros_por_pagina": 50,
      "apenas_importado_api": "N"
    }]
  }
    
  request({
    url: 'https://app.omie.com.br/api/v1/geral/clientes/',
    method: "POST",
    json: true,
    body: params
  }, function (error, response, body){
    res.json(body);
  });
});

// Serve the bundled assets
app.use(webpackMiddleware(compiler, {
  noInfo: true,
  lazy: true
}));

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
});