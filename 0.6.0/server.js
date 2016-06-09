"use strict";

let express = require("express");
let path = require("path");

let port = process.env.PORT || 8000;
let app = express();


app.use(express.static(__dirname + "/app/dist"));

app.get("/", (req, res) => {
  res.sendFile("index.html");
});

app.listen(port, () => console.log("App is listening in port " + port))
