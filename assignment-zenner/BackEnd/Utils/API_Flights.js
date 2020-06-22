//require("dotenv").config();
var express = require("express");
const axios = require("axios");
const api_domain = "https://api.thinklumo.com/flights/v1";
const RecipeFormat = require("./RecipesFormat.js")


// move to search util - no api .
// vaidate that user sent the required params
async function extractQueryParams(query_params, search_params){
  //const params_list = ["flight_num", "flight_date"];
  const params_list = ["flight_number"];

  params_list.forEach((param) =>{
    if(query_params[param]){
      search_params[param] = query_params[param]
    }
  });
  // to delete
 // search_params[apiKey] = process.env.spooncular_apiKey;
}

async function searchFlights(search_params){
  // orogin:let config = {'Authorization': 'MY-API-KEY'};

  const token = process.env.spooncular_apiKey;
  let config = {'Authorization' : `Token: ${token}}`}

  // add api key to headers
  // let search_response = await axios.get(`${api_domain}/search`,  {headers: config},
  //  {
  //   params: search_params,
  //  }
  // );
  let search_response = await axios.get(`${api_domain}/search`,
   {
    params: search_params
   }
  );
  let recipes = await Promise.all(
    search_response.data.results.map((recipe_raw) =>
    getRecipePrevInfo(recipe_raw.id)
    )
  );
  return recipes;
}

exports.extractQueryParams = extractQueryParams;
exports.searchFlights = searchFlights;