// region express configures
require("dotenv").config();
var express = require("express");
var path = require("path");
var logger = require("morgan");
const session = require("client-sessions");
const cors = require("cors");
const API_Flights = require("./Utils/API_Flights.js");


//const DButils = require("./Utils/db_utils");

var app = express();
app.use(logger("dev")); //logger
app.use(express.json()); // parse application/json
// app.use(
//   session({
//     cookieName: "session", // the cookie key name
//     secret: process.env.COOKIE_SECRET, // the encryption key
//     duration: 30 * 60 * 1000, // expired after 20 sec
//     activeDuration: 0 // if expiresIn < activeDuration,
//     //the session will be extended by activeDuration milliseconds
//   })
// );
app.use(express.urlencoded({ extended: false })); // parse application/x-www-form-urlencoded
app.use(express.static(path.join(__dirname, "public"))); //To serve static files such as images, CSS files, and JavaScript files

var port = process.env.PORT || "3000";
// routing

// try conection

app.get("/test", async (req, res, next) => {
  console.log("im hereee");
  try {
    res.status(200).send("okkkk");
   
  } catch (error) {
    next(error);
  }
});


app.get("/flights", async (req, res, next) => {
  let search_params= {}
  // change o search_utis..
  API_Flights.extractQueryParams(req.query, search_params);
  // now searach_parms updated with query parms
  console.log("adi");
  try {
    flights = await API_Flights.searchFlights(search_params);
    res.status(200).send("okkkk");
    // change to:
   //res.status(200).send(flights);
  } catch (error) {
    next(error);
  }
});


app.use(function (err, req, res, next) {
  console.error(err);
  res.status(err.status || 500).send({ message:""+ err.message, success: false });
});


const server = app.listen(port, () => {
  console.log(`Server listen on port ${port}`);
});

process.on("SIGINT", function () {
  if (server) {
    server.close(() => console.log("server closed"));
  }
  process.exit();
});
