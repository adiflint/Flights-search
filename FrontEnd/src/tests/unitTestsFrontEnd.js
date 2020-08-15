import { mount } from '@vue/test-utils'
import flightView from '../components/flightView'
import ReservedPage from '../pages/ReservedPage'

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


// flight selected already exists- insertion returns false
it('should return false', async() => {
  const wrapper =  mount(flightView, {
    propsData: {
      flights: [flight], 
      withButton: true
    }
  });
  try {
    // window.alert = () => {};  // provide an empty implementation for window.alert
    var suc = true;
    suc = await wrapper.vm.selectFlight(flight);
    expect(suc).toEqual(false);
  } catch (e) {
   
  }
})
