

/*
 * region express configure
*/

//require("dotenv").config();
var express = require("express");
var bodyParser = require('body-parser')
var path = require("path");
var logger = require("morgan");
const session = require("client-sessions");
const cors = require("cors");
const API_Flights = require("./Utils/API_Flights.js");
const DButils = require("./Utils/DB_Utils.js");

var app = express();
app.use(logger("dev")); //logger
app.use(express.json()); // parse application/json

app.use(express.urlencoded({ extended: false })); // parse application/x-www-form-urlencoded
app.use(express.static(path.join(__dirname, "public"))); //To serve static files such as images, CSS files, and JavaScript files


/*
 * cors config- allows to recive requests 
 * from local host
*/
const corsConfig = {
  origin: true, 
  credentials: true
};
app.use( cors(corsConfig));
app.options("*", cors(corsConfig));
var port = process.env.PORT || "3000";

/*
 * http get requests 
*/




// return to client all mattching flights given flight's date and number
app.get("/flights", async (req, res, next) => {
  if( req.query && req.query.origin && req.query.flight_num && req.query.date){
    try {
    
     flights = await API_Flights.searchFlights(req.query);
      res.status(200).send(flights);
    }
    catch (error) {
      console.log(error.res);
      next(error);
    }
  }
});

// return to client all reserved flights
app.get("/reservedFlights", async (req, res, next) => {
  try {
    let allFlights = await DButils.getAllReservedFlights();
    res.status(200).send(allFlights);
  }
  catch (error) {
    next(error);
  }
});

/*
 * http post requests 
*/

// recive the chosen flight details by the user and inserts the flight to db
app.post("/reserve", async (req, res, next) => {
  try{
    if( req.body){
      let success = await DButils.insertFlightsToDb(req.body);
      if( success)  res.status(200).send("flight saved succefully");
      //todo check statusss 
      // else res.status(400).send("flight already reserved");
    }
  }catch (error) {
    console.log(error.res);
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
