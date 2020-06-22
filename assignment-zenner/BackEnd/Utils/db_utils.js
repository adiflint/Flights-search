//require("dotenv").config();
var express = require("express");
//var router = express.Router();
//const bcrypt = require("bcrypt");
const sql = require("mssql");

const pool = new sql.ConnectionPool(config);
const poolConnect = pool
  .connect()
  .then(() => console.log("new connection pool Created"))
  .catch((err) => console.log(err));


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

// get flight information by flight's number and date
async function searchFlights(flight_num, flight_date) {
    await poolConnect;
    try {
    const info = await execQuery(
        `SELECT * FROM flights WHERE flight_num = '${flight_num} and flight_date = '${flight_date} '`
    );
    } catch (err) {
      console.error("SQL error", err);
      throw err;
    }
  };


// exports
exports.execQuery = execQuery;
