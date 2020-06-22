

 src="https://unpkg.com/axios/dist/axios.min.js"

let fight_date;
let flight_number;

function validateNumber(flight_number) {
    if( typeof parseInt(flight_number)  === "number"){
        console.log("true"+flight_number);
    }
    else{
        console.log("false");
    }  
}

function try_func() {
    fight_date =$("#example-datetime-local-input").val();
    flight_number = $("#number").val();
    console.log(fight_date)
    console.log(flight_number)
    validateNumber(flight_number)
    reqFromServer()
}

async function reqFromServer(){
    axios.get('http://localhost:3000/test').then(resp => {

        console.log(resp.data);
    });
 }

// now i want to send a request to the server 


