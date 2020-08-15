  <!-- this component present flights details as a list-->
<template>
  <div>
    <div id="div_flights" v-if="flights">
            <br>
            <br>
            <div v-for="flight in flights" :key="flight.flight_id">
                <div>{{flight.airline_name}}  </div>  
                <div>Flight number: {{flight.flight_num}} </div>
                <div>From: {{flight.origin_city}} - {{flight.origin_airport}} 
                    To: {{flight.destination_city}} - {{flight.destination_airport}}
                </div>  
                <div > Departure Time:  {{flight.scheduled_departure}} </div>
                <div > Arrival Time:   {{flight.scheduled_arrival}} </div>
                <br>
                <div v-if="withButton">
                    <button v-on:click="selectFlight(flight)"> Select Flight </button>
                </div>
                <br>
                <br>
            </div>
    </div>
        
  </div>
</template>

<script>
import axios from "axios";
export default {
  props: {
    flights: {
      type: Array,
      required: true
    }, 
    withButton:{
      type: Boolean, 
      required:true
    }
  }, 
  methods:{
    // send post request to server- save the selected flight
    async selectFlight(flight){
      let params = {
            flight_id: flight.flight_id,
            flight_num: flight.flight_num,
            airline_name: flight.airline_name,
            airline_iata: flight.airline_iata, 
            scheduled_departure: flight.scheduled_departure, 
            scheduled_arrival: flight.scheduled_arrival, 
            origin_city: flight.origin_city, 
            destination_city: flight.destination_city,
            origin_airport: flight.origin_airport,
            destination_airport:flight.destination_airport  
          }
          try {
            await axios.post(`http://localhost:3000/reserve`, params);
            alert("your flight has been confirmed");
          } catch (error) {
            if( error.response == undefined) console.log("no connection") ;
            else if( error.response.status == '409')
            alert("flight already exists");
            return false;
           }
   }
  }
};
</script>

<style scoped>
#div_flights{
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  font-weight: bold;
}
</style>
