--drop table favorites
--------------------------  Chocolate Strawberry Smoothies  -----------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Chocolate Strawberry Smoothies', 'https://www.thespruceeats.com/thmb/H8ffYpz90dh1gZvLv6yuuuATkwU=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-183301747-5826a57b5f9b58d5b1cb0f51.jpg',
'10 minutes',0, 0, 1, 1, 2);

---111

INSERT INTO [dbo].[recipe_ingredients] VALUES
('b4d5c289-0094-4855-af66-d9fb1166166e',NEWID(), 'frozen sliced strawberries' , 'cup' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('b4d5c289-0094-4855-af66-d9fb1166166e',NEWID(), 'non-fat milk' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('b4d5c289-0094-4855-af66-d9fb1166166e',NEWID(), 'pineapple juice' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('b4d5c289-0094-4855-af66-d9fb1166166e',NEWID(), 'non-fat vanilla yogurt' , 'cup ' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('b4d5c289-0094-4855-af66-d9fb1166166e',NEWID(), 'semisweet chocolate chips' , 'tbsp' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('b4d5c289-0094-4855-af66-d9fb1166166e',NEWID(), 'cocoa powder', 'tbsp ' , '1');

------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( 'b4d5c289-0094-4855-af66-d9fb1166166e','1', 'Place frozen strawberries in the blender or food processor first.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'b4d5c289-0094-4855-af66-d9fb1166166e','2', 'Add milk and juice. Top with remaining ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( 'b4d5c289-0094-4855-af66-d9fb1166166e','3', 'Puree until smooth, stopping to push the ​fruit down into the blades of the blender, if necessary.');

--------------------------Peanut Butter Popcorn------------------------------

INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Peanut Butter Popcorn', 'https://www.thespruceeats.com/thmb/VpTRoHW5GpoKeE5llILufdpiF9E=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/PeanutButterPopcorn8-0cfa29f9a74f44b1bf22d26ef9668547.jpg',
'20 minutes',0, 1, 1, 1, 15);

--222

INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'popped plain popcorn' , 'cup' , '12');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'unsalted peanuts' , 'cup' , '3/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'unsalted butter (softened)' , 'tablespoons' , '2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'granulated sugar' , 'cup' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'honey' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'light corn syrup' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'creamy peanut butter' , 'cup' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('47c38ec8-b992-4910-8192-b004536a7153',NEWID(), 'pure vanilla extract' , 'teaspoon ' , '1');
------------STEPS

INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','2', 'In a large roasting pan, combine the popped plain popcorn and peanuts. Spread out in one even layer. 
(Alternately, you can use two 9 x 13-inch pans.) Keep warm in a 250 F oven while preparing the other steps. ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','3', 'Butter the bottom and sides of a heavy 1-1/2 quart saucepan.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','4', 'Combine the granulated sugar, honey, and corn syrup in the pan. Bring to a boil, stirring constantly, and boil for 2 minutes. ');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','5', 'Remove the sugar mixture from the heat. Stir in the creamy peanut butter and vanilla extract.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','6', 'Remove the warm popcorn and peanut mixture from the oven and Immediately pour the peanut butter coating over the mixture. Stir to completely coat all of the popcorn .');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','7', 'Turn the coated popcorn and peanut mixture out onto baking sheets to cool completely. Separate and break into bite-sized pieces.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','8', 'Store in airtight containers or wrap up for gifts.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '47c38ec8-b992-4910-8192-b004536a7153','9', 'Enjoy!');



--------------------------Homemade Granola------------------------------
INSERT INTO [dbo].[Recipes] VALUES 
( NEWID(), 'Homemade Granola', 'https://www.thespruceeats.com/thmb/T3ankmOzhkD4ZGQRiq2uQSiA118=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/granola-recipe-4796424-main-61a6687901314e4888967238c3bd680a.jpg',
'65 minutes', 0, 0, 1, 1, 8);

--333

INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(),  'rolled oats' , 'cup' , '3 1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(), 'nuts (raw and unsalted)' , 'cup' , '3/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(),'seeds (raw)' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(),'coconut flakes (sweetened or unsweetened)' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393',NEWID(),  'honey' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(),  'oil' , 'cup' , '1/2');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(), 'salt' , 'teaspoon' , '3/4');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(),  'Optional: vanilla extract' , 'teaspoon' , '1');
INSERT INTO [dbo].[recipe_ingredients] VALUES
('88f33118-0a8a-4142-9eed-9e03984bf393', NEWID(),  'Optional: ground cinnamon (or other spice)' , 'teaspoon' , '1');


------------STEPS
INSERT INTO [dbo].[recipe_instructions] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393','1', 'Gather the ingredients.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393','2', 'Preheat the oven to 275 F.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393','3', 'Add the oats, nuts, seeds, coconut, sweetener, oil, salt, vanilla (if using), and cinnamon (if using) to a large, rimmed baking sheet. 
Toss well until completely coated and spread out into a single layer. If you prefer larger pieces of granola clusters, squeeze granola together after mixing to form clumps.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393','4', 'Bake until toasted and dry but not burnt, 45 minutes to 1 hour. Stir every 15 minutes and spread out into an even layer before placing back into the oven.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393','5', 'Add the dried fruit while the granola is still hot and toss. Let cool completely.');
INSERT INTO [dbo].[recipe_instructions] VALUES
( '88f33118-0a8a-4142-9eed-9e03984bf393','6', 'Store in an airtight container at room temperature for up to one week.');

-- insert to personal : adi flint recipes
INSERT INTO [dbo].[personal_recipes] VALUES
('36d47359-1718-4e2d-b6a8-6739b22aa304','b4d5c289-0094-4855-af66-d9fb1166166e');
INSERT INTO [dbo].[personal_recipes] VALUES
('36d47359-1718-4e2d-b6a8-6739b22aa304','47c38ec8-b992-4910-8192-b004536a7153');
INSERT INTO [dbo].[personal_recipes] VALUES
('36d47359-1718-4e2d-b6a8-6739b22aa304','88f33118-0a8a-4142-9eed-9e03984bf393');


-- select * from [dbo].[Recipes];
-- select * from [dbo].[IngredientAndQuantity];
-- TRUNCATE TABLE [dbo].[Recipes];


DELETE from [dbo].[Favorites]
where recipe_id = '14';


-- --------- GET PERSONAL RECIPES
-- SELECT p.Recipe_Id, r.Name , pr.Photo_Link , r.MakingTime , r.Servings , r.Vegan , r.Vegetarian , r.Gluten
-- FROM [dbo].[PersonalRecipe] p 
-- LEFT JOIN [dbo].[Recipes] r  ON r.Id = p.Recipe_Id
-- LEFT JOIN PhotosRecipe pr ON r.Id = pr.Recipe_Id

-- WHERE User_Id = 'b2ebb57d-b18f-4df0-be1f-1d054ff0d688'