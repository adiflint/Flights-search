  <!-- reserved page- shows the user all reserved flights -->

<template>
  <div>
    <div>
      <h1>Reserved Flights</h1>
    </div>
    <p> {{title}}</p>
  
    <div>
      <div v-if="flights">
          <flightView :flights="flights" :withButton="false" />
      </div>
    </div>
  </div>
</template>

<script>
import flightView from "../components/flightView";
import axios from "axios";

export default {
  components: {
    flightView
  },
  data() {
    return {
      flights: undefined,
      title: ''
    };
  },
  methods: {
     getFlights(flights){
       this.title =flights[0].airline_name;
       this.flights = flights;
       return this.flights
    }
  },
  //once enter the page-  send a get request to server- get all reserved flight
  async created() {
      try{
        const response = await axios.get("http://localhost:3000/reservedFlights" );
        this.flights = response.data;
      }catch(e){
        console.error(e);
      }
  }
  
};
</script>
