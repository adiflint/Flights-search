require("dotenv").config();
var express = require("express");
const axios = require("axios");
const path = require("path");
const api_domain = "https://api.spoonacular.com/recipes";
const RecipeFormat = require("./RecipesFormat.js")

//exports functions:

//This function use external API to search recipe 
async function search_recipes(sercha_values){
  const token = process.env.spooncular_apiKey;
  const { query, cuisine, diet, intolerances, number } = sercha_values;

  const search_response = await axios.get(`${api_domain}/search`, {
    params: {
      query: query,
      cuisine: cuisine,
      diet: diet,
      intolerances: intolerances,
      number: number,
      instructionsRequired: true,
      apiKey: process.env.spooncular_apiKey
    }
  });
  let recipes = await Promise.all(
    search_response.data.results.map((recipe_raw) =>
    getRecipePrevInfo(recipe_raw.id)
    )
  );
  return recipes;
}

//This function use external API to get 3 random recipes
async function random_recipes(){
  let search_response = await axios.get(`${api_domain}/random`, {
    params: {
      number: 3,
      apiKey: process.env.spooncular_apiKey
    }
  });
  search_response = await Promise.all(
    search_response.data.recipes.map((recipe_raw) =>
    random_recipe_with_instructions(recipe_raw)
    )
  );

  let recipes = await Promise.all(
    search_response.map((recipe_raw) =>
     RecipeFormat.preview_data(recipe_raw)
    )
  );
  return recipes;
}

//This function use external API to get recipe full data
async function info_recipes(recipe_id){
  return getRecipeFullInfo(recipe_id);
}


//Help function:

//This function use external API and return the preview data of the recipe
async function getRecipePrevInfo(id){
  const recipe_prev_info = await axios.get(`${api_domain}/${id}/information`, {
    params: {
      includeNutrition: false,
      apiKey: process.env.spooncular_apiKey
    }
  });
  return RecipeFormat.preview_data(recipe_prev_info.data);
}

//This function use external API and return the full data of the recipe
async function getRecipeFullInfo(id){
  const recipe_full_info = await axios.get(`${api_domain}/${id}/information`, {
    params: {
      includeNutrition: false,
      apiKey: process.env.spooncular_apiKey
    }
  });
  return RecipeFormat.full_recipe_data(recipe_full_info.data);
}

//This function returns number of random recipes whit instruction.
async function get_random(){
  let randomRecipes = await axios.get(`${api_domain}/random`, {
    params: {
      number: 1,
      apiKey: process.env.spooncular_apiKey
    }
  });
  return randomRecipes;
}

//This function verify that the random recipe have instroctions
async function random_recipe_with_instructions(random_recipe){
  while(!(random_recipe && random_recipe.instructions) && random_recipe.instructions === ""){
    random_recipe = get_random();
  }
  return random_recipe;
}


exports.search_recipes = search_recipes;
exports.random_recipes = random_recipes;
exports.info_recipes = info_recipes;
exports.getRecipePrevInfo = getRecipePrevInfo;
exports.getRecipeFullInfo = getRecipeFullInfo;

