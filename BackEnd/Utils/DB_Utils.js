require("dotenv").config();
const sql = require("mssql");

//* define relevant db: the mock db for testing or the normal one */
let database;
if (process.env.NODE_ENV === 'test') {
  database='DB_Flights_test';
} else {
  database='DB_Flights';
}


// db config
const config = {
  user: 'adi_admin',
  password: 'work1@work1',
  server: 'adiflin.database.windows.net',
  database: database, 
  connectionTimeout: 1500000,
  options: {
    encrypt: true,
    enableArithAbort: true
  }
};

// connect to db
const pool = new sql.ConnectionPool(config);
const poolConnect = pool
  .connect()

// execute given query 
 async function execQuery(query) {
  await poolConnect;
  try {
    var result = await pool.request().query(query);
    return result.recordset;
  } catch (err) {
    console.error("SQL error", err);
    throw err;
  }
};

// returns to client all reserved flight from db 
async function getAllReservedFlights() {
    try {
    let flights = await execQuery (`SELECT * FROM flights`);
    return extractInfo(flights);
    } catch (err) {
      console.error("SQL error", err);
      throw err;
    }
  };


// insert selected flight to db 
async function insertFlightsToDb(flight) {
  try {
    // check if the new given flight already exists
   let reserved_flights =  await execQuery(`select flight_id from flights `);
   // flight exists- roll back the order
   if(reserved_flights.find((x) => x.flight_id === flight.flight_id)){
    throw { status: 409, message: "flight exists" };
  }
  // flight not exists - insert to db
  await execQuery (`insert into flights values( '${flight.flight_id}',
  '${flight.flight_num}','${flight.airline_name}', '${flight.airline_iata}',
  '${flight.scheduled_departure}', '${flight.scheduled_arrival}', '${flight.origin_city}',
  '${flight.destination_city}', '${flight.origin_airport}', '${flight.destination_airport}' )`);
  return true;
  } catch (err) {
    throw err;
  }
};

async function closeConnection(){
  pool.close();
}

// extract flight's info, changes paramaters names 
async function extractInfo(flights){
  return flights.map((flight_details) => {

    const {
      flight_id,
      flight_number,
      airline_name,
      airline_iata, 
      departure_time, 
      arrival_time, 
      origin_city, 
      destination_city, 
      origin_airport, 
      destination_airport      
    } = flight_details;

    return {
      flight_id: flight_id,
      flight_num: flight_number,
      airline_name: airline_name,
      airline_iata: airline_iata, 
      scheduled_departure: departure_time, 
      scheduled_arrival: arrival_time, 
      origin_city: origin_city, 
      destination_city: destination_city, 
      origin_airport: origin_airport, 
      destination_airport: destination_airport 

  };
});
}


exports.execQuery = execQuery;
exports.getAllReservedFlights = getAllReservedFlights;
exports.insertFlightsToDb = insertFlightsToDb;
exports.closeConnection = closeConnection;
