import { mount } from '@vue/test-utils'
import flightView from '../components/flightView'


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


it('should return true', async() => {
  const wrapper =  mount(flightView, {
    propsData: {
      flights: [{
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
      }], 
      withButton: true
    }
  });
  try {
    await wrapper.vm.selectFlight(flight);
  } catch (e) {
    expect(e.message).toEqual("flight exists");
  }
})
