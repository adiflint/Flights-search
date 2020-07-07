const axios = require("axios");
const { raw } = require("mysql");

// api key 
let config = {'Token' : `f655372dfcbd5eaef1d7a825ce055820`}

// request the avaliable flight from lomo api, given flight number, origin, date
async function searchFlights(search_params){
  let search_response = await axios.get(`https://api.thinklumo.com/flights/v1/search`,  {headers: config,
    params: {
    origin:search_params.origin,
    flight_number: parseInt(search_params.flight_num),
    date: search_params.date
    }
   }
  );
  let flights = await Promise.all(
    search_response.data.results.map((flight_raw) =>{
      return getFlightInfo(flight_raw.flight);
     
    }
  ));
  return flights;
}

// extract relevant info from flight's details 
async function getFlightInfo(flight){
  // get the airline's name ans iata
  let airline_name = flight.carrier.name;
  let airline_iata = flight.carrier.iata;

  // get origin and destination city names
  let org_city = flight.origin.city;
  let dest_city = flight.destination.city;

  // get origin and destination airport iata
  let org_airport = flight.origin.iata;
  let dest_airport =  flight.destination.iata;

  return {
    flight_id: flight.id,
    flight_num: flight.number, 
    airline_name: airline_name,
    airline_iata: airline_iata, 
    scheduled_departure: flight.scheduled_departure, 
    scheduled_arrival: flight.scheduled_arrival, 
    origin_city: org_city, 
    destination_city: dest_city,
    origin_airport: org_airport,
    destination_airport: dest_airport
  }
}


exports.searchFlights = searchFlights;
