//exports functions:

//This funcrion get all recipe info and return the preview data
async function preview_data(recipe_raw){
    const {
      id,
      image,
      title,
      readyInMinutes,
      aggregateLikes,
      vegetarian,
      vegan,
      glutenFree,
    } = recipe_raw;
  
    return  {
      id: id,
      image: image,
      title: title,
      readyInMinutes: readyInMinutes,
      aggregateLikes: aggregateLikes,
      vegetarian: vegetarian,
      vegan: vegan,
      glutenFree: glutenFree,
    };
  }
  
  //This funcrion get all the recipe info anf returns the full recupe info 
  async function full_recipe_data(recipe_raw){
    const{
      id,
      image,
      title,
      readyInMinutes,
      aggregateLikes,
      vegetarian,
      vegan,
      glutenFree,
      servings,
      extendedIngredients,
      instructions,
      analyzedInstructions,
    } =recipe_raw;
  
    //returns all the ingredients for the recipe according to the relevant information
    let extendedIngredients_format = await Promise.all(extendedIngredients.map((ingredient_raw)=> 
    get_ingredient_info(ingredient_raw))
    );
  
    let analyzedInstructions_format = await Promise.all(analyzedInstructions.map((instructions_raw)=> 
    get_instructions_info(instructions_raw))
    );
  
    return{
      id: id,
      image: image,
      title: title,
      readyInMinutes: readyInMinutes,
      aggregateLikes: aggregateLikes,
      vegetarian: vegetarian,
      vegan: vegan,
      glutenFree: glutenFree,
      servings: servings,
      extendedIngredients: extendedIngredients_format,
      instructions: instructions,
      analyzedInstructions: analyzedInstructions_format,
    };
  }
  
//Help functions:

  //This function returns the relevant information for each ingredient 
  async function get_ingredient_info(ingredient_raw){
    const{
      id,
      name,
      unit,
      amount,
    }=ingredient_raw
  
    return{
      id: id,
      name: name,
      unit: unit,
      amount: amount,
    };
  }
  
  //This function returns the instructions as: name,{steps}  
  async function get_instructions_info(instructions_raw){
    const{
      name,
      steps,
    } = instructions_raw;
  
    let step_format = await Promise.all(steps.map((step_raw)=> 
    get_step_info(step_raw))
    );
    return{
      name: name,
      step: step_format,
    };
  }
  
  //This function returns step by the format: number, step
  async function get_step_info(step_raw){
    const{
      number,
      step,
    } = step_raw;
  
    return{
      number: number,
      step: step,
    };
  }
  
  exports.get_ingredient_info = get_ingredient_info;
  exports.get_instructions_info = get_instructions_info;
  exports.preview_data = preview_data;
  exports.full_recipe_data = full_recipe_data;