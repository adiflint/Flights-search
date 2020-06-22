var express = require("express");
var router = express.Router();
const DButils = require("../Utils/DButils");
const APIrecipes = require("./Utils/APIrecipes");
const bcrypt = require("bcrypt");


// const config = {
//   user: 'inbar_admin',
//   password: 'work3@work3',
//   server: 'adi-inbar-recipe.database.windows.net',
//   database: 'work3_db',
//   connectionTimeout: 1500000,
//   options: {
//     encrypt: true,
//     enableArithAbort: true
//   }
// }

//cookie authentication middleware
router.use(function (req, res, next) {
  if (req.session && req.session.user_id) {
    const id = req.session.user_id;
    DButils.checkIdOnDb(id).then((response) => {
      if (response && response.username) {
        req.username = response.username;
        req.user_id = response.user_id;
        next();
      }
      else{
        res.sendStatus(401);
      }
    })
    .catch((error) => next(error));
  } else {
    res.sendStatus(401);
  }
});

//--------watched recipes--------//
  router.get("/LastRecipes", async (req, res, next) => {
    try {
      let lastRecipes = await DButils.getWatchedRecipes(req.user_id)

      //update ufter merging
      let lastRecipeInfo = await Promise.all(
        lastRecipes.map((recipe) =>
        APIrecipes.getRecipePrevInfo(recipe.recipe_id)
        )
      );
  
     res.status(200).send(lastRecipeInfo);
  
    } catch (error) {
      next(error);
    }
  });

  // add to watched recipt: username id, recipe id, date time
  router.post("/LastRecipes", async (req, res, next) => {
    try {
      if( req.body.recipe_id ==undefined || req.body.recipe_id ==""){
        res.status(404).send("no recipe id");
      }
      await DButils.markWatchedRecipe(req.user_id, req.body.recipe_id);
      res.sendStatus(200);
    } catch (error) {
      if (error.number === 2627)
        res.sendStatus(200);
      else next(error);
    }
  });

//--------favorite recipes--------//
  router.get("/FavoriteRecipes", async (req, res, next) => {
    try {
      let favorites = await DButils.getUserFavourites(req.user_id)
            //update ufter merging
      let favorite_preview = await Promise.all(
        favorites.map((recipe) =>
        APIrecipes.getRecipePrevInfo(recipe.recipe_id)
        )
      );
     res.status(200).send(favorite_preview);
    } catch (error) {
      next(error);
    }
  });

  router.post("/FavoriteRecipes", async (req, res, next) => {
  try {
    await DButils.addToFavourites(req.user_id,req.body.recipe_id);
    res.sendStatus(200);
  } catch (error) {
    if (error.number === 2627)
      res.sendStatus(200);
    else next(error);
  }
});

//--------personal recipes--------//

// return full chosen user's recipe
router.get('/PersonalFullRecipe', async (req, res, next) => {
  const recipeID  =req.body.recipe_id;
  const array = {};
  array.info = await DButils.getRecipePreviewWithServings(recipeID);
  array.instructions = await DButils.getRecipeInstructions(recipeID);
  array.ingredients = await DButils.getRecipeIngredients(recipeID);
  array.images = await DButils.getRecipeImages(recipeID);
  res.status(200).send(array)
});

// return preview to all user's presonal recipes 
router.get('/AllPersonalPreviewRecipes', async (req, res, next) => {
  const user_id = req.user_id;
  try {
  const ids = await DButils.getUserRecipesIDS(user_id);
  const info = await DButils.getUserRecipesInfo(ids);
  res.status(200).send(info)
  }
 catch (error) {
  if (error.number === 2627)
    res.sendStatus(200);
  else next(error);
}
});

// family recipes
router.get('/AllFamilyRecipes', async (req, res, next) => {
  const user_id = req.user_id;
  try {
  const ids =  await DButils.getFamilyRecipesIDS(user_id);
  const array = await DButils.getFamilyRecipesInfo(ids);
  res.status(200).send(array)
  }
 catch (error) {
  if (error.number === 2627)
    res.sendStatus(200);
  else next(error);
}

});


module.exports = router;
