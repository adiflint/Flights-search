require("dotenv").config();
var express = require("express");
var router = express.Router();
const bcrypt = require("bcrypt");
const sql = require("mssql");

const config = {
  user: process.env.tedious_userName,
  password: process.env.tedious_password,
  server: process.env.tedious_server,
  database: process.env.tedious_database,
  connectionTimeout: 1500000,
  options: {
    encrypt: true,
    enableArithAbort: true
  }
};

const pool = new sql.ConnectionPool(config);
const poolConnect = pool
  .connect()
  .then(() => console.log("new connection pool Created"))
  .catch((err) => console.log(err));


 async function execQuery(query) {
  await poolConnect;
  try {
    var result = await pool.request().query(query);
    return result.recordset;
  } catch (err) {
    console.error("SQL error", err);
    throw err;
  }
};


exports.user_firstName = async function(User_Id){
  const user_info = await execQuery(`SELECT first_name from users where user_id = '${User_Id}'`);
  return user_info[0];
}

exports.user_url = async function(User_Id){
  const user_info = await execQuery(`SELECT picture_url from users where user_id = '${User_Id}'`);
  return user_info[0];
}

exports.checkIdOnDb = async function (User_Id){
  const user = await execQuery(`SELECT * from users where user_id = '${User_Id}'`);
  if(user != null && user.length>0){
    return user[0];
  }
  else {
    return null;
  }
};
exports.markWatchedRecipe =  async function (user_id,recipe_id){
    let returned = await execQuery("select * from user_last_recipes where user_id like '" + user_id + "' and recipe_id like '" + recipe_id +"'");
    if(returned.length == 0){
      await execQuery("INSERT INTO user_last_recipes Values ('" + user_id + "','" + recipe_id +"',"+Date.now()+")");
    }
    else{
        // recipe exists, update datetime seen 
     await execQuery("UPDATE user_last_recipes SET datetime = "+Date.now+ " WHERE user_id like '" + user_id + "' and recipe_id like '" + recipe_id +"'");
    }
};

exports.getWatchedRecipes = async function (user_id){
    return await execQuery( `select top 3 recipe_id from user_last_recipes where user_id='${user_id}' ORDER BY date DESC `
      );
};
    
exports.addToFavourites = async function(user_id, recipe_id){
      await execQuery("INSERT INTO Favorites Values ('" + user_id + "','" + recipe_id+"')");
        
};

exports.getUserFavourites = async function(user_id){
    return await execQuery(`SELECT recipe_id FROM Favorites WHERE user_id = '${user_id}'`);
 };
// personal 
exports.getUserRecipesIDS =  async function (user_id){
  return await execQuery(
    `SELECT recipe_id FROM personal_recipes WHERE user_id = '${user_id}'`
  );
};

exports.getUserRecipesInfo = async function (ids){
  ids = await Promise.all(ids.map((recipe_Id) => getRecipePreview(recipe_Id.recipe_id))
  );
  return ids;
};

// family
exports.getFamilyRecipesIDS =  async function (user_id){
  return await execQuery(
    `SELECT recipe_id FROM family_recipes WHERE user_id = '${user_id}'`
  );
};
exports.getFamilyRecipesInfo = async function (ids){
  ids = await Promise.all(ids.map((recipe_Id) => getFullFamilyRecipes(recipe_Id.recipe_id))
  );
  return ids;
};

async function getFullFamilyRecipes(recipe_id){
  const array = {};
  
  array.info =await getFamilyRecipePreview(recipe_id);
  
  array.instructions =await getRecipeInstructions(recipe_id);
  array.ingredients = await getRecipeIngredients(recipe_id);
  array.images = await getRecipeImages(recipe_id);
  return array;
}

async function getRecipePreview (recipe_id){
  const info = await execQuery(
    `SELECT * FROM recipes WHERE recipe_id = '${recipe_id}'`
  );
  return extractUserPersonalRecipes(info);

};

async function getRecipePreviewWithServings (recipe_id){
  // 
  const info = await execQuery(
    `SELECT * FROM recipes WHERE recipe_id = '${recipe_id}  '`
  );
  return extractUserPersonalRecipesWithServing(info);

};

async function getFamilyRecipePreview (recipe_id){
  // 
  const info = await execQuery(
    `SELECT r.recipe_id, r.recipe_name, r.image_url, r.prep_time, r.popularity,
     r.vegeterian, r.vegan, r.gluten_free, r.servings, f.when_served, f.author FROM recipes as R
    inner JOIN family_recipes AS f on r.recipe_id = '${recipe_id}' and f.recipe_id= '${recipe_id}'`
  );
  return extractFamilyRecipes(info);

};



async function getRecipeInstructions (recipe_id){
  const info = await execQuery(
    `SELECT * FROM recipe_instructions WHERE recipe_id = '${recipe_id}'`
  );
  return extractRecipeInstructions(info);

};

async function getRecipeIngredients(recipe_id){
  const info = await execQuery(
    `SELECT * FROM recipe_ingredients WHERE recipe_id = '${recipe_id}'`
  );
  return extractRecipeIngredients(info);

};

async function getRecipeImages(recipe_id){
  const info = await execQuery(
    `SELECT * FROM recipe_images WHERE recipe_id = '${recipe_id}'`
  );
  return extractRecipeImage(info);

};

//  family 

 exports.getAllFamilyRecipes =  async function (user_id){
  const recipes = await execQuery("select * from family_recipes where user_id like '"+user_id+"'");
  return recipes;
};



/// extract information :
async function  extractUserPersonalRecipes (recipe_details){
    return recipe_details.map((recipe_details) => {
      const {
        recipe_id,
        recipe_name,
        prep_time,
        popularity,
        vegan,
        vegeterian,
        gluten_free,
        image_url,
      } = recipe_details;
  
      return {
        Id: recipe_id,
        Name: recipe_name,
        PrepTime: prep_time,
        Popularity: popularity,
        Vegeterian: vegeterian,
        Vegan: vegan,
        Gluten: gluten_free,
        Photo_Url: image_url,
    };
 });
}

async function  extractUserPersonalRecipesWithServing (recipe_details){
  return recipe_details.map((recipe_details) => {
    const {
      recipe_id,
      recipe_name,
      prep_time,
      popularity,
      vegan,
      vegeterian,
      gluten_free,
      image_url,
      servings,
    } = recipe_details;

    return {
      Id: recipe_id,
      Name: recipe_name,
      PrepTime: prep_time,
      Popularity: popularity,
      Vegeterian: vegeterian,
      Vegan: vegan,
      Gluten: gluten_free,
      Photo_Url: image_url,
      servings: servings,
  };
});
}

async function  extractFamilyRecipes (recipe_details){
  return recipe_details.map((recipe_details) => {
    const {
      recipe_id,
      recipe_name,
      prep_time,
      popularity,
      vegan,
      vegeterian,
      gluten_free,
      image_url,
      servings,
      when_served,
      author,
    } = recipe_details;

    return {
      Id: recipe_id,
      Name: recipe_name,
      author:author,
      PrepTime: prep_time,
      Popularity: popularity,
      Vegeterian: vegeterian,
      Vegan: vegan,
      Gluten: gluten_free,
      Photo_Url: image_url,
      servings: servings,
      when_served: when_served,
  };
});
}

async function  extractRecipeInstructions (recipe_details){
  return recipe_details.map((recipe_details) => {
    const {
      recipe_id,
      step_number,
      step_description,
      
    } = recipe_details;

    return {
      Id: recipe_id,
      step_number: step_number,
      step_description: step_description,
  };
});
}

async function  extractRecipeIngredients (recipe_details){
  return recipe_details.map((recipe_details) => {
    const {
      recipe_id,
      ingredient_name,
      ingredient_unit_measurement,
      ingredient_unit_amount,
    } = recipe_details;

    return {
      Id: recipe_id,
      ingredient_name: ingredient_name,
      unit: ingredient_unit_measurement,
      amount: ingredient_unit_amount,
  };
});
}

async function  extractRecipeImage(recipe_details){
  return recipe_details.map((recipe_details) => {
    const {
      recipe_id,
      image_url,
      
    } = recipe_details;

    return {
      Id: recipe_id,
      image_url: image_url,

  };
});
}


exports.execQuery = execQuery;
exports.getRecipePreview = getRecipePreview;
exports.getRecipePreviewWithServings = getRecipePreviewWithServings;
exports.getRecipeInstructions= getRecipeInstructions;
exports.getRecipeIngredients = getRecipeIngredients;
exports.getRecipeImages= getRecipeImages;

