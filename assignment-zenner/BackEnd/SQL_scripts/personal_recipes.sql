drop table favorites
--------------------------  fries chicken  -----------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Fried Chicken', 'https://www.thespruceeats.com/thmb/v8vvMEh5s1pgeBL13VlVpiw31EQ=/2294x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/simple-fried-chicken-breast-cutlets-3056859-Final-5bb128c4c9e77c0026983ea4.jpg','18 minutes',0, 0, 0, 0, 4);

--Southern Mains
--Seafood Mains
--Salmon Recipes
--Citrus Recipes

INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'milk' , 'cup' , '3/4');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'egg' , '' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'flour' , 'cup' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'salt' , 'spoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'black pepper' , 'spoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'canola oil' , 'cup' , '3/4');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c',NEWID(), 'chicken breast' , 'peices' , '4');

------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','2', 'In a large bowl, whisk the milk, egg, and hot sauce together.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','3', 'In a wide, shallow bowl, combine the flour, salt, and pepper.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','4', 'In a large, heavy, deep skillet or Dutch oven, heat about 1 inch of oil to 350 F/180 C/Gas Mark 4.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','5', 'Preheat the oven to 200 F if you are not serving the cutlets immediately or if you are doubling the recipe and are cooking in batches.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','6', 'When the oil is hot, dip a chicken cutlet in the egg and milk mixture. Let excess drip off, then coat with the flour mixture. Carefully lower the coated chicken into the hot oil. Repeat with the remaining pieces.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','7', 'Fry the chicken for about 3 to 4 minutes on each side, until browned and cooked through.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','8', 'Drain the chicken on layers of paper towels or brown paper bags. ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '36e2f2df-2e94-4ef3-8a0d-f49c9e5e4e0c','9', 'Serve immediately or transfer to a large baking sheet and keep warm in a 200 F oven or warming drawer.');



--------------------------smoked alsmmon------------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Smoked Salmon Tapas', 'https://www.thespruceeats.com/thmb/rpFHnQlq5yB8a7fbT6kG6PXsg28=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/smoked-salmon-582d14065f9b58d5b175d294.jpg','5 minutes',0, 0, 0, 0, 5);


INSERT INTO [dbo].[recipe_ingredients] VALUES
('0c060c05-744e-4a34-8421-5e48c01c5387',NEWID(), 'French-style baguette' , '' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('0c060c05-744e-4a34-8421-5e48c01c5387',NEWID(), 'pound cream cheese (or any mild soft cheese)' , '' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('0c060c05-744e-4a34-8421-5e48c01c5387',NEWID(), 'pound smoked salmon' , '' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('0c060c05-744e-4a34-8421-5e48c01c5387',NEWID(), 'lemon slices' , '' , '2');
------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( '0c060c05-744e-4a34-8421-5e48c01c5387','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '0c060c05-744e-4a34-8421-5e48c01c5387','2', 'Preheat the oven to 350 F.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '0c060c05-744e-4a34-8421-5e48c01c5387','3', 'Cut the baguette into slices approximately 1/4-inch thick. Place slices on a baking sheet and lightly toast both sides, 5 to 7 minutes total. Allow​ them to cool 3 to 4 minutes.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '0c060c05-744e-4a34-8421-5e48c01c5387','4', 'Spread cheese over each piece of toast.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '0c060c05-744e-4a34-8421-5e48c01c5387','5', 'Cut salmon into toast-size pieces and place over cheese.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '0c060c05-744e-4a34-8421-5e48c01c5387','6', 'Serve with lemon slices, as your guests may wish to squeeze lemon over top.');

--------------------------pizza ------------------------------
INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'pizza', 'https://www.thespruceeats.com/thmb/jBkpGmA5QV0P16YnNLwuj2Oo0TA=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/12-inch-pizza-crust-427787-hero-5bdccb7446e0fb0026724ce1.jpg','45 minutes',0, 0, 0, 0, 4);


INSERT INTO [dbo].[recipe_ingredients] VALUES
('5bf88bef-98be-47ac-870e-1952e41f045c',NEWID(), 'active dry yeast' , 'spoon' , '2.5');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('5bf88bef-98be-47ac-870e-1952e41f045c',NEWID(), 'water' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('5bf88bef-98be-47ac-870e-1952e41f045c',NEWID(), 'sugar' , 'spoon' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('5bf88bef-98be-47ac-870e-1952e41f045c',NEWID(), 'vegetable oil' , 'table spoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('5bf88bef-98be-47ac-870e-1952e41f045c',NEWID(), 'flour' , 'cups' , '1.5');

------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','2', 'n a medium bowl, stir the yeast into warm water until all of the yeast is dissolved.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','3', 'Stir in the sugar, salt, and oil.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','4', 'Mix in enough flour to make a dough that can be kneaded.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','5', 'Turn the dough out onto a board and quickly knead it for 3 minutes. Add more flour, a tablespoon at a time, if the dough remains too sticky to knead.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','6', 'Place the dough into a greased bowl and flip it over so the dough top is also lightly greased.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','7', 'Cover and let it rise in a warm, draft-free place until it has doubled in size (about 30 minutes).');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','8', 'Press the dough into a greased 12-inch pizza pan or into a well-oiled skillet pan. Be sure to also press the dough up on the edges to form the crust.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','9', 'Add sauce and your desired toppings.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '5bf88bef-98be-47ac-870e-1952e41f045c','10', 'Bake the pizza at 400 F for about 20 minutes, or until edges are lightly golden.');

---- insert to personal : adi flint recipes
INSERT INTO [dbo].[personal_recipes] VALUES
('ab1ff1ae-661d-4f05-850b-34c1801de2b4','5bf88bef-98be-47ac-870e-1952e41f045c');
INSERT INTO [dbo].[personal_recipes] VALUES
('ab1ff1ae-661d-4f05-850b-34c1801de2b4','5bf88bef-98be-47ac-870e-1952e41f045c');
-- INSERT INTO [dbo].[PersonalRecipe] VALUES
-- ('ab1ff1ae-661d-4f05-850b-34c1801de2b4','dfb701b4-2653-46c0-8714-6a85df038df4');


select * from [dbo].[Recipes];
select * from [dbo].[IngredientAndQuantity];
TRUNCATE TABLE [dbo].[Recipes];


DELETE from [dbo].[Recipes]
where Id = '5a8b977f-46d5-4d0e-859d-31a49cac0620';


--------- GET PERSONAL RECIPES
SELECT p.Recipe_Id, r.Name , pr.Photo_Link , r.MakingTime , r.Servings , r.Vegan , r.Vegetarian , r.Gluten
FROM [dbo].[PersonalRecipe] p 
LEFT JOIN [dbo].[Recipes] r  ON r.Id = p.Recipe_Id
LEFT JOIN PhotosRecipe pr ON r.Id = pr.Recipe_Id

WHERE User_Id = 'b2ebb57d-b18f-4df0-be1f-1d054ff0d688'
--- add coulmn private name
ALTER TABLE [dbo].[users]
ADD first_name [VARCHAR](300),
    last_name [varchar](300)
UPDATE users set 
users.username = 'adiflint',
users.first_name = 'Adi',
users.last_name = 'Flint'
where user_id = 'ab1ff1ae-661d-4f05-850b-34c1801de2b4';

UPDATE users set 
users.username = 'inbarTzur',
users.first_name = 'Inbar',
users.last_name = 'Tzur'
where user_id = 'edaa9b8a-4707-4293-bd1d-c2382f3d83a0';