--drop table recipe_ingredients
--------------------------  Roasted Asparagus  -----------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Roasted Asparagus', 'https://www.thespruceeats.com/thmb/mtZNTqPGXU8ulfqlS_t8K8uXa40=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/asparagus-roasted-14-5a7460133418c6003784038d.jpg',
'10 minutes',0, 1, 1, 1, 4);


INSERT INTO [dbo].[recipe_ingredients] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068',NEWID(), 'asparagus' , 'pound' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068',NEWID(), 'extra-virgin olive oil' , 'tablespoons' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068',NEWID(), 'salt' , 'Kosher' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068',NEWID(), 'Freshly ground black pepper' , '' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068',NEWID(), 'Optional: fresh lemon juice' , 'spoon' , '1');


------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068','1', 'Heat the oven to 450 F.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068','2', 'Wash the asparagus in a colander under cold running water. Cut or snap off the tough, woody ends of the asparagus. They will usually snap off right at the place where they become tough or woody. Just gently bend and snap. 
Discard the ends or save them to use for broth or sauce. Peel the stalks, if desired.  Leave the spears whole or cut into shorter lengths. Pat the asparagus dry with paper towels.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068','3', 'Toss the asparagus spears with 2 tablespoons of olive oil. Arrange the spears in a single layer in the baking pan. Sprinkle lightly with kosher salt or sea salt.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068','4', 'Roast for 8 to 10 minutes, depending on the thickness of the asparagus. The tips should appear lightly browned.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068','5', 'If desired, sprinkle the roasted asparagus with a little freshly ground black pepper and lemon juice before serving.');

------------------------Asparagus Soup------------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Asparagus Soup', 'https://www.thespruceeats.com/thmb/kom83_oLlmxCQka_nLY5gY8JEuU=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Asparagussoup-GettyImages-98218315-5a24d05eda27150037a6292b.jpg',
'20 minutes',0, 0, 1, 1, 6);


INSERT INTO [dbo].[recipe_ingredients] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380',NEWID(), 'asparagus' , 'bunches' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380',NEWID(), 'butter' , 'tablespoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380',NEWID(), 'vegetable stock' , 'quart' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380',NEWID(), 'heavy cream' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380',NEWID(), 'Cayenne pepper' , 'quart' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380',NEWID(), 'Salt' , 'quart' , '1');
------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','2', 'Cut the asparagus into 1-inch pieces and set aside (reserve a few tips for garnish).');
INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','3', 'In a soup pot, melt the butter over medium heat; when it begins to foam add the garlic and cook for 30 seconds.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','4', 'Add the stock and asparagus, and bring to a simmer. Cook for about 5 minutes, until the asparagus is tender but still green.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','5', 'When the asparagus is ready, remove from heat and puree using a stick, or regular blender.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','6', 'Pour back into the pot. Add the cream and cook on low until heated through. Season to taste with salt and cayenne.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','7', 'Ladle the asparagus soup into bowls and serve hot.');



------------------------Asparagus Gruyere Tart--------------


INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Asparagus Gruyere Tart', 'https://www.thespruceeats.com/thmb/SapQe0AMAaCwPPS_RY4cQQxLtxw=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/AsparagusGruyereTart-5a5aaa99482c52003bdcc242.jpg',
'60 minutes',0, 0, 1, 1, 6);


INSERT INTO [dbo].[recipe_ingredients] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d',NEWID(), 'puff pastry' , 'ounces' , '12');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d',NEWID(), 'asparagus' , 'bunch' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d',NEWID(), 'shallots' , '' , '3');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d',NEWID(), 'butter' , 'tablespoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d',NEWID(), 'gruyere cheese' , 'ounces' , '4');

------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','2', 'Preheat an oven to 375 F.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','3', 'Defrost the puff pastry and roll out. Lay into a 12-inch square tart pan or simply form a 12-inch square on a baking sheet. 
Poke all over with a fork -- this technique is known as docking -- and bake until golden, about 20 minutes.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','4', 'While the pastry cooks, peel and finely chop the shallot. Melt the butter in a small frying pan over medium heat. Add the shallot and cook, stirring frequently, until softened and starting to brown, about 10 minutes.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','5', 'Meanwhile, cut off and discard the bottom ends of the asparagus so the spear will fit in the tart pan. Use a vegetable peeler to peel the bottom third or quarter of each spear (a pain, but worth it!). Set aside.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','6', 'Grate the cheese and set aside.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','7', 'Spread the cooked shallot over the par-baked crust. Top with an even layer of the grated cheese. Arrange the asparagus spears on top. Bake until the asparagus is tender and browned and the pastry is all well browned about 30 minutes.');
INSERT INTO [dbo].[recipe_instructions] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','8', 'Let the tart cool, cut into pieces, and serve warm or at room temperature. Like most things made from puff pastry, this tart is at its best if served while still warm. Sitting around and/or 
reheating wont ruin it, but they wont do it any favors either.');




-- insert to family : adi flint recipes
--recipe id, user id. when serves
INSERT INTO [dbo].[family_recipes] VALUES
('dc2ff9bb-755b-47d5-b7fe-9a775f8c9068','36d47359-1718-4e2d-b6a8-6739b22aa304','Family dinner' );
INSERT INTO [dbo].[family_recipes] VALUES
('02d2c2d4-95a9-4bd1-a018-09a837e1d380','36d47359-1718-4e2d-b6a8-6739b22aa304','Family dinner' );
INSERT INTO [dbo].[family_recipes] VALUES
('7d398062-35b3-4895-9f53-678b96c2667d','36d47359-1718-4e2d-b6a8-6739b22aa304','Family dinner' );


select * from [dbo].[Recipes];
select * from [dbo].[IngredientAndQuantity];
TRUNCATE TABLE [dbo].[Recipes];


UPDATE family_recipes set 
family_recipes.author = 'Grandma'
where recipe_id = 'dc2ff9bb-755b-47d5-b7fe-9a775f8c9068'

UPDATE family_recipes set 
family_recipes.author = 'Mother Sharon'
where recipe_id = '02d2c2d4-95a9-4bd1-a018-09a837e1d380'

UPDATE family_recipes set 
family_recipes.author = 'Grandma'
where recipe_id = '7d398062-35b3-4895-9f53-678b96c2667d'




--------- GET PERSONAL RECIPES
SELECT p.Recipe_Id, r.Name , pr.Photo_Link , r.MakingTime , r.Servings , r.Vegan , r.Vegetarian , r.Gluten
FROM [dbo].[PersonalRecipe] p 
LEFT JOIN [dbo].[Recipes] r  ON r.Id = p.Recipe_Id
LEFT JOIN PhotosRecipe pr ON r.Id = pr.Recipe_Id

WHERE User_Id = 'b2ebb57d-b18f-4df0-be1f-1d054ff0d688'

SELECT * FROM recipes R 
left JOIN
(SELECT f.when_served, recipe_id FROM family_recipes f ) l ON R.recipe_id = l.recipe_id
WHERE r.recipe_id = '6783b46a-1097-40e2-a931-84effa8ffb94'



-- (SELECT * FROM recipes R WHERE recipe_id = '6783b46a-1097-40e2-a931-84effa8ffb94' 
-- INNER join
-- SELECT f.when_served FROM family_recipes f WHERE recipe_id = '6783b46a-1097-40e2-a931-84effa8ffb94' 
