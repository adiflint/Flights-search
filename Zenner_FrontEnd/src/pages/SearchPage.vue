<template>
  <div>
    <div>
      <h1>Search Flight</h1>
    </div>

<form id="app" @submit="checkForm" method="search" style="width:300px;">
  <!-- shows the user unfilled fields -->
  <p v-if="errors.length">
    <b>Please correct the following error(s):</b>
    <ul>
      <li v-for="error in errors"  :key=error>{{ error }}</li>
    </ul>
  </p>

  <!-- search form -->

  <div class="form-group">
    <label for="origin"> Origin Airport: </label>
    <input type="text" name="origin" class="form-control" id="origin" v-model="origin">
  </div>

  <div class="form-group">
    <label for="flight_num">Flight Number: </label>
    <input class="form-control" type="number" name="flight_num" id="flight_num" v-model="flight_num">
  </div>

  <div class="form-group">
      <label>Date: </label>
      <date-picker v-model="date" valueType="format" style="margin-left: 20px;"></date-picker>
  </div>

  <div>
    <button class="btn btn-primary" type="submit" v-on:click ="search">
      Search
    </button>
  </div>

</form>

   <br>
    <div>
        <!-- shows serach flights result -->
      <div v-if="flights">
          <strong> Available flights: </strong>
          <flightView :flights="flights" :withButton="true" />
      </div>
      <div v-else-if="isSearched && !flights">
            <p>No Available flights, try another date or flight number</p>
      </div>
       <div v-if="isConfirmed">
            <p>Flight ordered successfully!</p>
      </div>
   
    </div>
  </div>
</template>

<script>
import flightView from "../components/flightView";
import DatePicker from 'vue2-datepicker';
 import  'vue2-datepicker/index.css';
 
export default {
  components: {
    flightView,
    DatePicker 
  },
  data() {
    return {
      flights: undefined, 
      isSearched:undefined,
      isConfirmed:undefined,
      origin: '', 
      flight_num: '', 
      date: '',
      errors:[]
    };
  },
   methods: {
     // sends get request to the serever - with user chosen paramaters
       async search(){
          try {
            this.flights = undefined;
            this.isConfirmed = undefined;
            this.isSearched = undefined;
            const response = await this.axios.get(`http://localhost:3000/flights?origin=${this.origin}&flight_num=${this.flight_num}&date=${this.date}`);
            if( response.data && response.data.length > 0)  {this.flights = response.data};
            this.isSearched = 'true';
          } catch (error) {
            this.flights = undefined;
        }

        },
        // validate form- checks if all fields filled by the user
      checkForm:function(e) {
      if(this.originn && this.flight_num && this.date) return true;
      this.errors = [];
      if(!this.origin) this.errors.push("origin required.");
      if(!this.flight_num) this.errors.push("flight number required.");
      if(!this.date) this.errors.push("date required.");
      e.preventDefault();
    }
    
    },
     

};
</script>