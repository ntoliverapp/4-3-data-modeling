CREATE TABLE users (
  user_id SERIAL PRIMARY KEY, 
  user_first_name VARCHAR(50),
  user_last_name VARCHAR(50),
  user_pronouns VARCHAR(50),
  user_email VARCHAR(50),
  user_password VARCHAR(500),
  user_birthday INTEGER,
  user_bio VARCHAR(1000)
);

CREATE TABLE ingredients(
  ingredient_id SERIAL PRIMARY KEY,
  ingredient_name VARCHAR(50)
);

CREATE TABLE tools(
  tool_id SERIAL PRIMARY KEY,
  tool_name VARCHAR(50)
);

CREATE TABLE occasion(
  occasion_id SERIAL PRIMARY KEY,
  meal_time VARCHAR(50),
  recipe_ideas INT NOT NULL REFERENCES recipes(recipe_id)
);

CREATE TABLE recipes(
  recipe_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  recipe_name VARCHAR(100),
  has_recipe_picture BOOLEAN,
  recipe_ingredients INT NOT NULL REFERENCES ingredients(ingredient_id),
  recipe_tools INT NOT NULL REFERENCES tools(tool_id),
  recipe_instructions VARCHAR(5000),
  recipe_post_date INT,
  recipe_occasion INT NOT NULL REFERENCES occasion(occasion_id),
  is_recipe_post_public BOOLEAN
);

CREATE TABLE share_recipe(
  share_id SERIAL PRIMARY KEY,
  recipe INT NOT NULL REFERENCES recipes(recipe_id),
  recipe_review VARCHAR(150)
);

CREATE TABLE grocery(
  grocery_id SERIAL PRIMARY KEY,
  recipe INT NOT NULL REFERENCES recipes(recipe_id),
  grocery_ingredients INT NOT NULL REFERENCES ingredients(ingredient_id)
);


INSERT INTO users 
(user_first_name,  user_last_name,  user_pronouns,  user_email, user_password, user_birthday, user_bio)
VALUES
('Reggie', 'Rocket', 'she/her/hers', 'reggierocket@code.com','dh65f#$%SSh2', 02201994, 'I am a personal chef and gardener who loves good food.'),
('Homer', 'Simpson', 'he/him/his', 'homersimpson@code.com','JJ8^7*(#GNnbZX', 09271965, 'I like donuts.');

SELECT * FROM users;

INSERT INTO ingredients 
(ingredient_name)
VALUES
('Apple'),
('Sugar'),
('Flour'),
('Butter'),
('Eggs');

SELECT * FROM ingredients;

INSERT INTO tools
(tool_name)
VALUES
('Baking Sheet'),
('Mixing Bowl'),
('Spoon'),
('Measuring Cup');

SELECT * FROM tools;

INSERT INTO occasion
(meal_time, recipe_ideas)
VALUES 
('Fourth of July', '')

INSERT INTO recipes
(recipe_name, has_ecipe_picture, recipe_ingredients, recipe_tools, recipe_post_date, recipe_occasion, is_recipe_post_public)
VALUES
('Apple Pie', "True", ingredient_id, )
