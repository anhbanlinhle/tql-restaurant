import random

data = [
    ('Bruschetta', 'Appetizer', 'Baguette', 'tomatoes', 'garlic', 'fresh basil', 'olive oil', 'balsamic vinegar', 'salt', 'pepper'),
    ('Chicken Satay', 'Appetizer', 'Chicken breast', 'soy sauce', 'peanut butter', 'lime juice', 'garlic', 'ginger', 'brown sugar', 'skewers'),
    ('Caprese Skewers', 'Appetizer', 'Cherry tomatoes', 'fresh mozzarella balls', 'basil leaves', 'balsamic glaze', 'salt', 'pepper'),
    ('Spinach and Artichoke Dip', 'Appetizer', 'Spinach', 'artichoke hearts', 'cream cheese', 'sour cream', 'mayonnaise', 'Parmesan cheese', 'garlic', 'salt', 'pepper'),
    ('Stuffed Mushrooms', 'Appetizer', 'Button mushrooms', 'breadcrumbs', 'Parmesan cheese', 'garlic', 'parsley', 'olive oil', 'salt', 'pepper'),
    ('Shrimp Cocktail', 'Appetizer', 'Shrimp', 'cocktail sauce', 'lemon wedges', 'fresh dill'),
    ('Deviled Eggs', 'Appetizer', 'Eggs', 'mayonnaise', 'Dijon mustard', 'pickle relish', 'paprika', 'salt', 'pepper'),
    ('Mini Quiches', 'Appetizer', 'Pie crust', 'eggs', 'milk', 'cheese', 'spinach', 'mushrooms', 'onions', 'salt', 'pepper'),
    ('Guacamole', 'Appetizer', 'Avocado', 'lime juice', 'tomato', 'onion', 'garlic', 'cilantro', 'salt', 'pepper'),
    ('Chicken Wings', 'Appetizer', 'Chicken wings', 'hot sauce', 'butter', 'garlic powder', 'salt', 'pepper'),
    ('Spaghetti Bolognese', 'main_dish', 'Ground beef', 'spaghetti', 'tomato sauce', 'onion', 'garlic', 'carrot', 'celery', 'red wine', 'olive oil', 'salt', 'pepper'),
    ('Grilled Salmon', 'main_dish', 'Salmon fillets', 'lemon', 'olive oil', 'garlic', 'dill', 'salt', 'pepper'),
    ('Beef Stir-Fry', 'main_dish', 'Beef strips', 'soy sauce', 'ginger', 'garlic', 'broccoli', 'bell peppers', 'carrots', 'onions', 'vegetable oil'),
    ('Chicken Parmesan', 'main_dish', 'Chicken breast', 'breadcrumbs', 'Parmesan cheese', 'marinara sauce', 'mozzarella cheese', 'spaghetti', 'olive oil', 'salt', 'pepper'),
    ('Tacos', 'main_dish', 'Tortillas', 'ground beef', 'lettuce', 'tomatoes', 'cheese', 'salsa', 'sour cream', 'guacamole'),
    ('Vegetable Curry', 'main_dish', 'Mixed vegetables', 'curry paste', 'coconut milk', 'onion', 'garlic', 'ginger', 'vegetable oil', 'salt', 'pepper'),
    ('BBQ Ribs', 'main_dish', 'Pork ribs', 'BBQ sauce', 'brown sugar', 'paprika', 'garlic powder', 'onion powder', 'salt', 'pepper'),
    ('Margherita Pizza', 'main_dish', 'Pizza dough', 'tomato sauce', 'mozzarella cheese', 'fresh basil', 'olive oil', 'salt', 'pepper'),
    ('Beef Burritos', 'main_dish', 'Flour tortillas', 'ground beef', 'rice', 'beans', 'cheese', 'salsa', 'sour cream', 'lettuce'),
    ('Chicken Fajitas', 'main_dish', 'Chicken breast', 'bell peppers', 'onions', 'fajita seasoning', 'tortillas', 'guacamole', 'sour cream', 'salsa'),
    ('Garlic Mashed Potatoes', 'side_dish', 'Potatoes', 'garlic', 'butter', 'milk', 'salt', 'pepper'),
    ('Grilled Vegetables', 'side_dish', 'Assorted vegetables', 'olive oil', 'balsamic vinegar', 'salt', 'pepper'),
    ('Coleslaw', 'side_dish', 'Cabbage', 'carrots', 'mayonnaise', 'vinegar', 'sugar', 'salt', 'pepper'),
    ('Rice Pilaf', 'side_dish', 'Rice', 'onion', 'garlic', 'chicken or vegetable broth', 'butter', 'salt', 'pepper'),
    ('Baked Beans', 'side_dish', 'Canned baked beans', 'bacon', 'onion', 'brown sugar', 'molasses', 'mustard', 'salt', 'pepper'),
    ('Cornbread', 'side_dish', 'Cornmeal', 'flour', 'sugar', 'baking powder', 'milk', 'eggs', 'butter', 'salt'),
    ('Caesar Salad', 'side_dish', 'Romaine lettuce', 'croutons', 'Parmesan cheese', 'Caesar dressing'),
    ('Roasted Brussels Sprouts', 'side_dish', 'Brussels sprouts', 'olive oil', 'garlic', 'salt', 'pepper'),
    ('Creamed Spinach', 'side_dish', 'Spinach', 'cream cheese', 'heavy cream', 'garlic', 'nutmeg', 'salt', 'pepper'),
    ('Roasted Potatoes', 'side_dish', 'Potatoes', 'olive oil', 'garlic', 'rosemary', 'salt', 'pepper'),
    ('Chocolate Chip Cookies', 'Dessert', 'Flour', 'butter', 'sugar', 'brown sugar', 'eggs', 'vanilla extract', 'chocolate chips', 'baking soda', 'salt'),
    ('Apple Pie', 'Dessert', 'Pie crust', 'apples', 'sugar', 'cinnamon', 'lemon juice', 'butter'),
    ('Cheesecake', 'Dessert', 'Cream cheese', 'sugar', 'eggs', 'sour cream', 'vanilla extract', 'graham cracker crust'),
    ('Brownies', 'Dessert', 'Flour', 'cocoa powder', 'sugar', 'butter', 'eggs', 'vanilla extract', 'chocolate chips', 'salt'),
    ('Tiramisu', 'Dessert', 'Ladyfingers', 'mascarpone cheese', 'coffee', 'cocoa powder', 'sugar', 'rum', 'eggs'),
    ('Fruit Salad', 'Dessert', 'Assorted fruits', 'honey', 'lemon juice', 'mint leaves'),
    ('Creme Brulee', 'Dessert', 'Heavy cream', 'sugar', 'vanilla extract', 'egg yolks'),
    ('Carrot Cake', 'Dessert', 'Flour', 'sugar', 'carrots', 'eggs', 'vegetable oil', 'baking powder', 'cinnamon', 'cream cheese frosting'),
    ('Panna Cotta', 'Dessert', 'Heavy cream', 'sugar', 'gelatin', 'vanilla extract', 'fresh berries'),
    ('Lemon Bars', 'Dessert', 'Flour', 'butter', 'sugar', 'eggs', 'lemon juice', 'lemon zest', 'powdered sugar'),
    ('Mojito', 'Drink', 'White rum', 'lime juice', 'mint leaves', 'sugar', 'soda water', 'ice'),
    ('Margarita', 'Drink', 'Tequila', 'lime juice', 'triple sec', 'salt', 'ice'),
    ('Strawberry Smoothie', 'Drink', 'Strawberries', 'yogurt', 'milk', 'honey', 'ice'),
    ('Old Fashioned', 'Drink', 'Whiskey', 'sugar', 'bitters', 'orange peel', 'ice'),
    ('Piña Colada', 'Drink', 'Pineapple juice', 'coconut cream', 'white rum', 'ice'),
    ('Mango Lassi', 'Drink', 'Mango', 'yogurt', 'sugar', 'cardamom', 'ice'),
    ('Hot Chocolate', 'Drink', 'Milk', 'cocoa powder', 'sugar', 'vanilla extract', 'whipped cream', 'chocolate shavings'),
    ('Iced Tea', 'Drink', 'Tea bags', 'water', 'sugar', 'lemon slices', 'ice'),
    ('Espresso Martini', 'Drink', 'Vodka', 'espresso', 'coffee liqueur', 'sugar syrup', 'ice'),
    ('Sparkling Lemonade', 'Drink', 'Lemon juice', 'sparkling water', 'sugar', 'lemon slices', 'ice')
]


dish_inserts = []
ingredient_inserts = []
cooking_inserts = []

for dish in data:
    name = dish[0]
    dish_type = dish[1].lower()
    ingredients = dish[2:]

    # Generate INSERT statement for dish table
    dish_insert = f"INSERT IGNORE INTO dish (name, type) VALUES ('{name}', '{dish_type}');"
    dish_inserts.append(dish_insert)

    for ingredient in ingredients:
        price = random.uniform(1, 4)  # Generate a random price between 1 and 4
        price = round(price, 2)
        ingredient_insert = f"INSERT IGNORE INTO ingredient (name, price) VALUES ('{ingredient.capitalize()}', {price});"
        ingredient_inserts.append(ingredient_insert)

        cooking_insert = f"INSERT IGNORE INTO cooking (dish, ingredient) SELECT d.id, '{ingredient.capitalize()}' FROM dish d WHERE d.name = '{name}';"
        cooking_inserts.append(cooking_insert)

# Write INSERT statements to a text file
with open('./server/generate/sql/dish.sql', 'w') as file:
    for insert in dish_inserts:
        file.write(insert + '\n')

    for insert in ingredient_inserts:
        file.write(insert + '\n')

    for insert in cooking_inserts:
        file.write(insert + '\n')

print("SQL statements have been written to sql_inserts.txt file.")
