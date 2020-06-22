drop table recipe_images
--------------------------  FISH  -----------------------------
INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Baked Whole Fish in Garlic-Chili Sauce', 'https://www.thespruceeats.com/thmb/_y1OMHr-mRQvjR9KVGb7S7ZVLiA=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/baked-whole-fish-garlic-chili-sauce-3217567-hero-01-54ea47133a05454cb55773fb5405201a.jpg','20 minutes',0, 0, 0, 0, 4);

INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'oyster sauce' , 'cup ' , '1/4');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'soy sauce' , 'cup' , '1/4');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'fish sauce' , 'spoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'cloves garlic' , '' , '8');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'brown sugar' , 'spoon' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'black pepper ' , 'spoon' , '1/4');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'red snapper' , 'unit' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'basil' , 'handful' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0',NEWID(), 'oil' , 'spoon' , '4');

------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','2', 'Preheat oven to 375 F or heat grill to medium.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','3', 'Stir all sauce ingredients together in a bowl. Set aside.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','4', 'Place fish on a cutting board and score it by making vertical cuts an inch or more apart along the length of fish from head to tail. Turn fish over and do the same on the other side.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','5', 'Brush your grill with a little oil to keep fish from sticking (if using a fish cage, it also helps to brush it with oil).');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','6', 'Drizzle 3 tablespoons (or more) of the sauce over the fish, covering both sides. Be sure to spoon some into the cuts youve made, as well as into the underside cavity.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','7', 'Grill fish 10 to 20 minutes ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','8', 'To serve, top with fresh coriander and basil, plus wedges of lime or lemon.');

DELETE FROM recipe_instructions  WHERE recipe_id= 'f2a14352-361e-4f28-ba33-5696fee410c0' 
and step_number = 5;

------ images 
INSERT INTO [dbo].[recipe_images] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','https://www.thespruceeats.com/thmb/66PxPgPmuAfBwLbBr4HreVnhQnM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/baked-whole-fish-garlic-chili-sauce-3217567-prep-the-fish-step-01-2cdb50e5504446999757e452559b70ec.jpg');
INSERT INTO [dbo].[recipe_images] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','https://www.thespruceeats.com/thmb/eZVQUivWYYD6sDceFPdb5rmWSo0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/baked-whole-fish-garlic-chili-sauce-3217567-prep-the-fish-step-03-68c9184978e74cc5892e9d4de72341b2.jpg');
INSERT INTO [dbo].[recipe_images] VALUES
( 'f2a14352-361e-4f28-ba33-5696fee410c0','https://www.thespruceeats.com/thmb/C-RjhWIKWuPQSiuHjFuLJfJ0ioU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/baked-whole-fish-garlic-chili-sauce-3217567-grilling-step-05-401d41b9245a4738816cfa32c57b5501.jpg');


--------------------------  COOKIES  -----------------------------
INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Low-Calorie Chocolate Chip Oatmeal Cookies', 'https://www.thespruceeats.com/thmb/RYS15RazfsAybHJITHyFgTRir9M=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/low-calorie-chocolate-chip-oatmeal-cookies-2238527-9-5b0dade2eb97de00376334e0.jpg','10 minutes',0, 0, 0, 0, 24);


INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'butter' , 'ounces ' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'brown sugar' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'granulated sugar' , 'cup' , '1/3');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'egg' , '' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'vanilla' , 'spoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'oats ' , 'cup' , '1 1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'baking soda' , 'spoon' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'salt' , 'spoon' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), 'cinnamon' , 'spoon' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('6783b46a-1097-40e2-a931-84effa8ffb94',NEWID(), ' chocolate chips' , 'cup' , '1/2');

------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','2', 'Heat the oven to 350 F. Spray a large baking sheet with nonstick cooking spray or line it with parchment paper. ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','3', 'Place the softened butter, the brown sugar, and the white sugar in a medium-sized mixing bowl. With an electric beater, beat the butter and sugars until the mixture is smooth and fluffy.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','4', 'Add the egg and vanilla and continue beating until the mixture is completely combined. Set the mixture aside until you are ready to continue with it. ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','5', 'In a separate, large mixing bowl, combine the flour, oats, baking powder, baking soda, salt, and cinnamon simply by using a large spoon or fork to toss the dry ingredients together. Make sure the mixture is well combined.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','6', 'With a large, sturdy spoon, mix in the butter-sugar mixture by gently stirring the ingredients together just until they are well combined.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','7', 'Add the chocolate chips and continue to gently stir the ingredients to combine them well.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','8', 'Use a tablespoon to drop the dough by rounded tablespoons onto the prepared baking sheet, spacing them about 2 inches apart.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '6783b46a-1097-40e2-a931-84effa8ffb94','9', 'Bake the cookies for 10 to 12 minutes or until the edges of the cookies turn slightly brown (bake a little less for soft cookies, and a little longer for crisp cookies).');



--------------------------  cheese muffine  -----------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'cheese cupcakes', 'https://www.thespruceeats.com/thmb/zNJTc2qQ_fejpUiIH4YHheKUHto=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/cream-cheese-frosting-h3-5b649bdc46e0fb002c80ee18.jpg','10 minutes',0, 0, 0, 0, 12);

INSERT INTO [dbo].[recipe_ingredients] VALUES
('c4d8d553-131c-4dcc-a16d-a5a530603918',NEWID(), 'cream cheese' , 'package ' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('c4d8d553-131c-4dcc-a16d-a5a530603918',NEWID(), 'cream ' , 'spoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('c4d8d553-131c-4dcc-a16d-a5a530603918',NEWID(), 'vanilla extract ' , 'spon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('c4d8d553-131c-4dcc-a16d-a5a530603918',NEWID(), 'powdered sugar' , 'cups' , '3');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('c4d8d553-131c-4dcc-a16d-a5a530603918',NEWID(), 'salt' , 'spoon' , '1/4');
------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( 'c4d8d553-131c-4dcc-a16d-a5a530603918','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'c4d8d553-131c-4dcc-a16d-a5a530603918','2', 'In a mixing bowl with an electric mixer, beat the cream cheese with 1 tablespoon of cream and the vanilla until smooth and creamy.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'c4d8d553-131c-4dcc-a16d-a5a530603918','3', 'Sift the powdered sugar and measure 3 cups (about 12 ounces). Gradually add the powdered sugar to the cream cheese along with a pinch of salt and beat until smooth and fluffy. ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'c4d8d553-131c-4dcc-a16d-a5a530603918','4', 'Add more cream or milk if needed for spreading or piping consistency.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'c4d8d553-131c-4dcc-a16d-a5a530603918','5', 'Use frosting on cake or cupcakes.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'c4d8d553-131c-4dcc-a16d-a5a530603918','6', 'Enjoy!');


-- להכניס מחדש לפי התבנית למטה, גם מרכיבים וצעדים
---- insert to personal : adi flint recipes
INSERT INTO [dbo].[family_recipes] VALUES
('ab1ff1ae-661d-4f05-850b-34c1801de2b4','c4d8d553-131c-4dcc-a16d-a5a530603918', 'Birthdays');
INSERT INTO [dbo].[family_recipes] VALUES
('ab1ff1ae-661d-4f05-850b-34c1801de2b4','f2a14352-361e-4f28-ba33-5696fee410c0', 'Friday dinner');
-- INSERT INTO [dbo].[PersonalRecipe] VALUES
-- ('ab1ff1ae-661d-4f05-850b-34c1801de2b4','dfb701b4-2653-46c0-8714-6a85df038df4');

---- insert to family : adi flint recipes
-- recipe id, user id. when serves
INSERT INTO [dbo].[family_recipes] VALUES
('f2a14352-361e-4f28-ba33-5696fee410c0','ab1ff1ae-661d-4f05-850b-34c1801de2b4','Friday dinner' );
-- INSERT INTO [dbo].[family_recipes] VALUES
-- ('ab1ff1ae-661d-4f05-850b-34c1801de2b4','0c060c05-744e-4a34-8421-5e48c01c5387');


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

SELECT r.recipe_id, r.recipe_name, r.image_url, r.prep_time, 
r.popularity, r.vegeterian, r.vegan, r.gluten_free, r.servings, f.when_served
 FROM recipes as R 
inner JOIN family_recipes AS f 
on r.recipe_id = '6783b46a-1097-40e2-a931-84effa8ffb94' and f.recipe_id= '6783b46a-1097-40e2-a931-84effa8ffb94'

-- add author
ALTER TABLE [dbo].[family_recipes]
ADD author [VARCHAR](300)

UPDATE family_recipes set 
family_recipes.author = 'Grandma'
where recipe_id = 'f2a14352-361e-4f28-ba33-5696fee410c0'

UPDATE family_recipes set 
family_recipes.author = 'Grandma Yafa'
where recipe_id = 'f2a14352-361e-4f28-ba33-5696fee410c0'

UPDATE family_recipes set 
family_recipes.author = 'Aunt Neta'
where recipe_id = '6783b46a-1097-40e2-a931-84effa8ffb94'

UPDATE family_recipes set 
family_recipes.author = 'My Mother Dorit'
where recipe_id = 'c4d8d553-131c-4dcc-a16d-a5a530603918'

