require("dotenv").config();
var express = require("express");
var router = express.Router();
const API_recipes = require("../Utils/APIrecipes.js");

//This function return all the information about a reipe by the recipe_id
router.get("/Information", async (req, res, next) => {
  try {
    let recipe = await API_recipes.info_recipes(req.query.recipe_id);
    res.send({ data: recipe });
  } catch (error) {
    next(error);
  }
});

//This function search recipe by query and returns the preview info of the recipe
router.get("/Search",async(req,res,next)=>
{
  try{
    let search_res = await API_recipes.search_recipes(req.query);
    res.status(200).send(search_res);
  }
  catch(error){
    next(error);
  } 
});

//This function return preview info of  3 random recipes
router.get("/Random",async(req,res,next)=>
{
  try{
    let random_res = await API_recipes.random_recipes();
    res.status(200).send(random_res);
  }
  catch(error){
    next(error);
  }
  
});


module.exports = router;