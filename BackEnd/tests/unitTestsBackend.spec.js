const API_Flights = require("../Utils/API_Flights");
const DBUtils = require("../Utils/DB_Utils");

//* This test class tests API_Flight and DB_Utils classes

const params = {
    origin:'BOS',
    flight_num: 667,
    date: '2020-06-06'
    };

const flight =  {
    "flight_id": "WN667BOSDEN2006062035",
    "flight_num": "667",
    "airline_name": "Southwest Airlines",
    "airline_iata": "WN",
    "scheduled_departure": "2020-06-06T16:35:00-04:00",
    "scheduled_arrival": "2020-06-06T19:20:00-06:00",
    "origin_city": "Boston",
    "destination_city": "Denver",
    "origin_airport": "BOS",
    "destination_airport": "DEN"
 }

// test the get-flights request - should return the following flight details given 
// params as defined above
describe('test api get request- search flights', () => {
    it('should return valid data', async () => {
            let res = await API_Flights.searchFlights(params);
            expect(res[0]).toEqual(
            {
            "flight_id": "WN667BOSDEN2006062035",
            "flight_num": "667",
            "airline_name": "Southwest Airlines",
            "airline_iata": "WN",
            "scheduled_departure": "2020-06-06T16:35:00-04:00",
            "scheduled_arrival": "2020-06-06T19:20:00-06:00",
            "origin_city": "Boston",
            "destination_city": "Denver",
            "origin_airport": "BOS",
            "destination_airport": "DEN"
            });
    });
});
// test flight's details inserted to db 
describe('test insertion to db', () => {
// clear test tables before insert to db:
 beforeEach(() => {
    DBUtils.execQuery('truncate table [dbo].[flights]');
 });
    it('should return true - confirm insert flight to DB', async () => {
        const insert = await DBUtils.insertFlightsToDb(flight);
        expect(insert).toEqual(true);
    });
})

//test insert failure because flight already exists in db - duplicate keys
it('tests error with async/await', async () => {
    expect.assertions(1);
    try {
      await DBUtils.insertFlightsToDb(flight);
    } catch (e) {
      expect(e.message).toEqual("flight exists");
    }
  });

  // test get request: get all reserved flights from db
  describe('test api get request- reserved flight', () => {
    it('should return valid data', async () => {
            let res = await DBUtils.getAllReservedFlights();
            expect(res[0]).toEqual(
            {
            "flight_id": "WN667BOSDEN2006062035",
            "flight_num": 667,
            "airline_name": "Southwest Airlines",
            "airline_iata": "WN",
            "scheduled_departure": "2020-06-06T16:35:00-04:00",
            "scheduled_arrival": "2020-06-06T19:20:00-06:00",
            "origin_city": "Boston",
            "destination_city": "Denver",
            "origin_airport": "BOS",
            "destination_airport": "DEN"
            });
    });
});