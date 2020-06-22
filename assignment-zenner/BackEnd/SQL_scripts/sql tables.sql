

DROP TABLE user_last_recipes
DROP TABLE diet

insert into [dbo].[recipes] VALUES ( NEWID(), 'adi flint','Cheese cake', '',20,0, 1,0,1,3 );

CREATE TABLE [dbo].[recipes](
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL default NEWID(),
	[recipe_name] [varchar](300) NOT NULL,
	[image_url] [varchar](500) NOT NULL,
	[prep_time]  [varchar](300) NOT NULL,
    [popularity][int],
	[vegan] [int] NOT NULL,
	[vegeterian] [int] NOT NULL,
	[gluten_free] [int] NOT NULL,
	[servings] [int] NOT NULL,	
	PRIMARY KEY (recipe_id),
)

CREATE TABLE [dbo].[user_last_recipes](
    [user_id] [UNIQUEIDENTIFIER] NOT NULL,
	[recipe_id] [varchar](300) NOT NULL,
	[date] [varchar](300) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	PRIMARY KEY (user_id, recipe_id)
)


CREATE TABLE [dbo].[Favorites](
    [user_id] [UNIQUEIDENTIFIER] NOT NULL,
	[recipe_id] [varchar](500)  NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	PRIMARY KEY (user_id, recipe_id)
)

-- until here 12:20

CREATE TABLE [dbo].[recipe_images](
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL,
	[image_url] [varchar](500) NOT NULL,
	[step_number] [varchar](500) NOT NULL,

	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	PRIMARY KEY (image_url, recipe_id)
)

CREATE TABLE [dbo].[recipe_instructions](
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL,
	[step_number] [int] NOT NULL,
	[step_description] [varchar](1000) NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	PRIMARY KEY (step_number, recipe_id)
)

CREATE TABLE [dbo].[recipes_diet](
	[dietName][varchar](300) NOT NULL,
	[recipeID] [UNIQUEIDENTIFIER] NOT NULL,
	FOREIGN KEY (recipeID) REFERENCES recipes(recipe_id),
	PRIMARY KEY (dietName, recipeID)
)

CREATE TABLE [dbo].[recipe_ingredients](
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL,
	[ingredient_ID] [UNIQUEIDENTIFIER] NOT NULL,
	[ingredient_name] [varchar](300) NOT NULL,
	[ingredient_unit_measurement] [varchar](300) NOT NULL,
	[ingredient_unit_amount] [varchar](300) NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	PRIMARY KEY (ingredient_ID, recipe_id)
)
CREATE TABLE [dbo].[recipes_cuisine](
	[cuisine_name] [varchar](300) NOT NULL,
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	PRIMARY KEY ( recipe_id,cuisine_name )
)

CREATE TABLE [dbo].[recipes_intolerance](
	[intolerance_name] [varchar](300) NOT NULL,
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	PRIMARY KEY ( recipe_id,intolerance_name )
)

CREATE TABLE [dbo].[personal_recipes](
	[user_id] [UNIQUEIDENTIFIER] NOT NULL,
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
	PRIMARY KEY ( recipe_id,user_id )
)

CREATE TABLE [dbo].[family_recipes](
	[recipe_id] [UNIQUEIDENTIFIER] NOT NULL default NEWID(),
	[user_id] [UNIQUEIDENTIFIER] NOT NULL default NEWID(),
	[when_served] [varchar](300) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
	PRIMARY KEY (user_id, recipe_id)
)

ALTER TABLE users
ADD picture_url varchar(255);