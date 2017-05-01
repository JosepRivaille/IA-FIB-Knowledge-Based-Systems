; Sun Apr 30 11:54:13 CEST 2017
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot alcohol
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ing_name
;+		(type ANY)
		(create-accessor read-write))
	(single-slot price_max
		(type FLOAT)
		(range 0.0 1000.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot price
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot drink-price
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dish-price
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drinks
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drink-name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot month
		(type INTEGER)
		(range 1 12)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot rico_rico_Class5
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot main-course-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot cholesterol
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot main-course
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rico_rico_Class8
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ing-name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dish-name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot calories
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot price_min
		(type FLOAT)
		(range 0.0 1000.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot carbohydrates
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot style
		(type SYMBOL)
		(allowed-values mexican chineese mars)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot protein
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot drink-classification
		(type SYMBOL)
		(allowed-values Alcohol Soft-drink Caffeine Juice Other)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot dish-ingredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot number_eaters
		(type INTEGER)
		(range 1 1000)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dishes
		(type INSTANCE)
;+		(allowed-classes Dish)
		(cardinality 3 3)
		(create-accessor read-write))
	(single-slot drink
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dish-classification
		(type SYMBOL)
		(allowed-values Vegetarian Kosher Islamic Spanish Italian French Chinese Japanese Turkish American Mexican Indian Moroccan Gourmet Gluten-free Vegan Lactose-free Mediterranean)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot type
		(type SYMBOL)
		(allowed-values Familiar Congress)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ca
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot second-course-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot menu-price
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ing_availability
;+		(type ANY)
		(create-accessor read-write))
	(single-slot menu-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ing-availability
		(type INTEGER)
		(range 0 12)
		(cardinality 1 12)
		(create-accessor read-write))
	(single-slot dessert-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot disponibility_months
		(type SYMBOL)
		(allowed-values January February)
		(cardinality 0 12)
		(create-accessor read-write))
	(single-slot dessert
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot second-course
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nutritional_values
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ingredient_name
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fat
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot KB_190605_Class14
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Event
	(is-a USER)
	(role concrete)
	(single-slot month
		(type SYMBOL)
		(allowed-values January February March April May June July August September October November December)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dishes
		(type INSTANCE)
;+		(allowed-classes Dish)
		(cardinality 3 3)
		(create-accessor read-write))
	(single-slot price_max
		(type FLOAT)
		(range 0.0 1000.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
		(type SYMBOL)
		(allowed-values Familiar Congress)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot drinks
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot price_min
		(type FLOAT)
		(range 0.0 1000.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot number_eaters
		(type INTEGER)
		(range 1 1000)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Dish
	(is-a USER)
	(role concrete)
	(multislot dish-classification
		(type SYMBOL)
		(allowed-values Vegetarian Kosher Islamic Spanish Italian French Chinese Japanese Turkish American Mexican Indian Moroccan Gourmet Gluten-free Vegan Lactose-free Mediterranean Cold Hot Soup Meet Fish Pasta Vegetables Modern Classical)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot dish-name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dish-price
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot dish-ingredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Drink
	(is-a USER)
	(role concrete)
	(single-slot drink-name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot drink-price
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot drink-classification
		(type SYMBOL)
		(allowed-values Alcohol Soft-drink Caffeine Juice Other)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot drink-combination
		(type INSTANCE)
;			(allowed-classes Dish)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Ingredient
	(is-a USER)
	(role concrete)
	(single-slot carbohydrates
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot cholesterol
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot fat
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ing-name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot protein
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ing-availability
		(type INTEGER)
		(range 0 12)
		(cardinality 1 12)
		(create-accessor read-write))
	(single-slot calories
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete)
	(single-slot menu-price
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot menu-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot main-course-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot main-course
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot second-course-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dessert-drink
		(type INSTANCE)
;+		(allowed-classes Drink)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dessert
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot second-course
		(type INSTANCE)
;+		(allowed-classes Dish)
;+		(cardinality 1 1)
		(create-accessor read-write)))

;%%%%%
;%
;% INSTANCES
;%
;%%%%%

(definstances dishes
	([rico_rico_Class10000] of Dish
		(dish-name "Spaghetti Bolognese")
		(dish-classification Italian Mediterranean)
		(dish-ingredients [rico_rico_Class10054] [rico_rico_Class10016] [rico_rico_Class10012] [rico_rico_Class10029])
		(dish-price 5.50)
	)

	([rico_rico_Class10001] of Dish
		(dish-name "Mediterranian Salad")
		(dish-classification Vegetarian Vegan Mediterranean Gluten-free)
		(dish-ingredients [rico_rico_Class10016] [rico_rico_Class10009])
		(dish-price 2)
	)
)

(definstances ingredients
	([rico_rico_Class10002] of Ingredient
		(ing-name "Artichoke")
		(ing-availability 1 2 3 4 5 10 11 12)
		(calories 47)
		(fat 1)
		(protein 3)
		(carbohydrates 11)
		(cholesterol 0)
	)

	([rico_rico_Class10003] of Ingredient
		(ing-name "Asparagus")
		(ing-availability 2 3 4 5 6)
		(calories 20)
		(fat 0)
		(protein 2)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([rico_rico_Class10004] of Ingredient
		(ing-name "Eggplant")
		(ing-availability 6 7 8 9)
		(calories 24)
		(fat 0)
		(protein 1)
		(carbohydrates 6)
		(cholesterol 0)
	)

	([rico_rico_Class10005] of Ingredient
		(ing-name "Beans")
		(ing-availability 6 7 8 9)
		(calories 347)
		(fat 1)
		(protein 21)
		(carbohydrates 63)
		(cholesterol 0)
	)

	([rico_rico_Class10006] of Ingredient
		(ing-name "Peas")
		(ing-availability 6 7 8 9)
		(calories 81)
		(fat 1)
		(protein 5)
		(carbohydrates 14)
		(cholesterol 0)
	)

	([rico_rico_Class10007] of Ingredient
		(ing-name "Broccoli")
		(ing-availability 4 5 6 7 8 9 10)
		(calories 0)
		(fat 33)
		(protein 3)
		(carbohydrates 7)
		(cholesterol 0)
	)

	([rico_rico_Class10008] of Ingredient
		(ing-name "Cabbage")
		(ing-availability 6 7 8 9)
		(calories 24)
		(fat 0)
		(protein 1)
		(carbohydrates 6)
		(cholesterol 0)
	)

	([rico_rico_Class10009] of Ingredient
		(ing-name "Carrot")
		(ing-availability 7 8 9 10)
		(calories 41)
		(fat 0)
		(protein 1)
		(carbohydrates 19)
		(cholesterol 0)
	)

	([rico_rico_Class10010] of Ingredient
		(ing-name "Cauliflower")
		(ing-availability 8 9 10 11 12)
		(calories 24)
		(fat 0)
		(protein 2)
		(carbohydrates 5)
		(cholesterol 0)
	)

	([rico_rico_Class10011] of Ingredient
		(ing-name "Lettuce")
		(ing-availability 4 5 6 7 8 9)
		(calories 14)
		(fat 0)
		(protein 1)
		(carbohydrates 3)
		(cholesterol 0)
	)

	([rico_rico_Class10012] of Ingredient
		(ing-name "Corn")
		(ing-availability 6 7 8 9 10)
		(calories 365)
		(fat 5)
		(protein 9)
		(carbohydrates 74)
		(cholesterol 0)
	)

	([rico_rico_Class10013] of Ingredient
		(ing-name "Garlic")
		(ing-availability 0)
		(calories 148)
		(fat 1)
		(protein 6)
		(carbohydrates 33)
		(cholesterol 0)
	)

	([rico_rico_Class10014] of Ingredient
		(ing-name "Onion")
		(ing-availability 0)
		(calories 39)
		(fat 0)
		(protein 1)
		(carbohydrates 9)
		(cholesterol 0)
	)

	([rico_rico_Class10015] of Ingredient
		(ing-name "Pepper")
		(ing-availability 6 7 8 9 10)
		(calories 39)
		(fat 0)
		(protein 2)
		(carbohydrates 9)
		(cholesterol 0)
	)

	([rico_rico_Class10016] of Ingredient
		(ing-name "Spinach")
		(ing-availability 1 2 11 12)
		(calories 23)
		(fat 0)
		(protein 3)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([rico_rico_Class10017] of Ingredient
		(ing-name "Cucumber")
		(ing-availability 5 6 7 8 9)
		(calories 15)
		(fat 0)
		(protein 1)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([rico_rico_Class10018] of Ingredient
		(ing-name "Tomato")
		(ing-availability 0)
		(calories 17)
		(fat 0)
		(protein 1)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([rico_rico_Class10019] of Ingredient
		(ing-name "Potato")
		(ing-availability 0)
		(calories 76)
		(fat 0)
		(protein 2)
		(carbohydrates 17)
		(cholesterol 0)
	)

	([rico_rico_Class10020] of Ingredient
		(ing-name "Apple")
		(ing-availability 0)
		(calories 52)
		(fat 0)
		(protein 0)
		(carbohydrates 14)
		(cholesterol 0)
	)

	([rico_rico_Class10021] of Ingredient
		(ing-name "Banana")
		(ing-availability 0)
		(calories 88)
		(fat 0)
		(protein 1)
		(carbohydrates 23)
		(cholesterol 0)
	)

	([rico_rico_Class10022] of Ingredient
		(ing-name "Grape")
		(ing-availability 9 10 11)
		(calories 66)
		(fat 0)
		(protein 1)
		(carbohydrates 17)
		(cholesterol 0)
	)

	([rico_rico_Class10023] of Ingredient
		(ing-name "Kiwi")
		(ing-availability 10 11 12)
		(calories 60)
		(fat 1)
		(protein 1)
		(carbohydrates 15)
		(cholesterol 0)
	)

	([rico_rico_Class10024] of Ingredient
		(ing-name "Lemon")
		(ing-availability 0)
		(calories 28)
		(fat 0)
		(protein 1)
		(carbohydrates 9)
		(cholesterol 0)
	)

	([rico_rico_Class10025] of Ingredient
		(ing-name "Mango")
		(ing-availability 5 6 7 8)
		(calories 59)
		(fat 0)
		(protein 1)
		(carbohydrates 15)
		(cholesterol 0)
	)

	([rico_rico_Class10026] of Ingredient
		(ing-name "Melon")
		(ing-availability 6 7 8)
		(calories 33)
		(fat 0)
		(protein 1)
		(carbohydrates 8)
		(cholesterol 0)
	)

	([rico_rico_Class10027] of Ingredient
		(ing-name "Orange")
		(ing-availability 1 2 3 10 11 12)
		(calories 47)
		(fat 0)
		(protein 1)
		(carbohydrates 12)
		(cholesterol 0)
	)

	([rico_rico_Class10028] of Ingredient
		(ing-name "Peach")
		(ing-availability 6 7 8)
		(calories 39)
		(fat 0)
		(protein 1)
		(carbohydrates 10)
		(cholesterol 0)
	)

	([rico_rico_Class10029] of Ingredient
		(ing-name "Pear")
		(ing-availability 8 9 10)
		(calories 57)
		(fat 0)
		(protein 0)
		(carbohydrates 15)
		(cholesterol 0)
	)

	([rico_rico_Class10030] of Ingredient
		(ing-name "Strawberry")
		(ing-availability 3 4 5 6 7)
		(calories 32)
		(fat 0)
		(protein 1)
		(carbohydrates 8)
		(cholesterol 0)
	)

	([rico_rico_Class10031] of Ingredient
		(ing-name "Bacon")
		(ing-availability 0)
		(calories 540)
		(fat 42)
		(protein 37)
		(carbohydrates 1)
		(cholesterol 110)
	)

	([rico_rico_Class10032] of Ingredient
		(ing-name "Beef")
		(ing-availability 0)
		(calories 250)
		(fat 15)
		(protein 26)
		(carbohydrates 0)
		(cholesterol 90)
	)

	([rico_rico_Class10033] of Ingredient
		(ing-name "Chicken")
		(ing-availability 0)
		(calories 239)
		(fat 14)
		(protein 27)
		(carbohydrates 0)
		(cholesterol 88)
	)

	([rico_rico_Class10034] of Ingredient
		(ing-name "Duck")
		(ing-availability 0)
		(calories 337)
		(fat 28)
		(protein 19)
		(carbohydrates 0)
		(cholesterol 84)
	)

	([rico_rico_Class10035] of Ingredient
		(ing-name "Lamb")
		(ing-availability 0)
		(calories 294)
		(fat 21)
		(protein 25)
		(carbohydrates 0)
		(cholesterol 97)
	)

	([rico_rico_Class10036] of Ingredient
		(ing-name "Turkey")
		(ing-availability 0)
		(calories 188)
		(fat 7)
		(protein 29)
		(carbohydrates 0)
		(cholesterol 109)
	)

	([rico_rico_Class10037] of Ingredient
		(ing-name "Veal")
		(ing-availability 0)
		(calories 172)
		(fat 8)
		(protein 24)
		(carbohydrates 0)
		(cholesterol 103)
	)

	([rico_rico_Class10038] of Ingredient
		(ing-name "Abalone")
		(ing-availability 0)
		(calories 189)
		(fat 20)
		(protein 11)
		(carbohydrates 0)
		(cholesterol 94)
	)

	([rico_rico_Class10039] of Ingredient
		(ing-name "Anchovy")
		(ing-availability 0)
		(calories 210)
		(fat 10)
		(protein 29)
		(carbohydrates 0)
		(cholesterol 85)
	)

	([rico_rico_Class10040] of Ingredient
		(ing-name "Cockle")
		(ing-availability 0)
		(calories 79)
		(fat 1)
		(protein 13)
		(carbohydrates 5)
		(cholesterol 52)
	)

	([rico_rico_Class10041] of Ingredient
		(ing-name "Crab")
		(ing-availability 0)
		(calories 97)
		(fat 2)
		(protein 19)
		(carbohydrates 0)
		(cholesterol 53)
	)

	([rico_rico_Class10042] of Ingredient
		(ing-name "Crawfish")
		(ing-availability 0)
		(calories 87)
		(fat 1)
		(protein 18)
		(carbohydrates 0)
		(cholesterol 137)
	)

	([rico_rico_Class10043] of Ingredient
		(ing-name "Cuttlefish")
		(ing-availability 0)
		(calories 158)
		(fat 1)
		(protein 32)
		(carbohydrates 2)
		(cholesterol 224)
	)

	([rico_rico_Class10044] of Ingredient
		(ing-name "Halibut")
		(ing-availability 0)
		(calories 185)
		(fat 14)
		(protein 14)
		(carbohydrates 0)
		(cholesterol 46)
	)

	([rico_rico_Class10045] of Ingredient
		(ing-name "Prawn")
		(ing-availability 0)
		(calories 99)
		(fat 0)
		(protein 24)
		(carbohydrates 0)
		(cholesterol 189)
	)

	([rico_rico_Class10046] of Ingredient
		(ing-name "Salmon")
		(ing-availability 0)
		(calories 208)
		(fat 13)
		(protein 20)
		(carbohydrates 0)
		(cholesterol 55)
	)

	([rico_rico_Class10047] of Ingredient
		(ing-name "Tuna")
		(ing-availability 0)
		(calories 184)
		(fat 6)
		(protein 30)
		(carbohydrates 0)
		(cholesterol 49)
	)

	([rico_rico_Class10048] of Ingredient
		(ing-name "Cheese")
		(ing-availability 0)
		(calories 402)
		(fat 33)
		(protein 25)
		(carbohydrates 1)
		(cholesterol 105)
	)

	([rico_rico_Class10049] of Ingredient
		(ing-name "Chocolate")
		(ing-availability 0)
		(calories 545)
		(fat 31)
		(protein 43)
		(carbohydrates 61)
		(cholesterol 8)
	)

	([rico_rico_Class10050] of Ingredient
		(ing-name "Eggs")
		(ing-availability 0)
		(calories 155)
		(fat 11)
		(protein 13)
		(carbohydrates 1)
		(cholesterol 373)
	)

	([rico_rico_Class10051] of Ingredient
		(ing-name "Milk")
		(ing-availability 0)
		(calories 43)
		(fat 1)
		(protein 3)
		(carbohydrates 5)
		(cholesterol 5)
	)

	([rico_rico_Class10052] of Ingredient
		(ing-name "Yogurt")
		(ing-availability 0)
		(calories 58)
		(fat 1)
		(protein 10)
		(carbohydrates 4)
		(cholesterol 5)
	)

	([rico_rico_Class10053] of Ingredient
		(ing-name "Bread")
		(ing-availability 0)
		(calories 264)
		(fat 3)
		(protein 9)
		(carbohydrates 49)
		(cholesterol 0)
	)

	([rico_rico_Class10054] of Ingredient
		(ing-name "Cookies")
		(ing-availability 0)
		(calories 140)
		(fat 8)
		(protein 2)
		(carbohydrates 15)
		(cholesterol 25)
	)

	([rico_rico_Class10055] of Ingredient
		(ing-name "Rice")
		(ing-availability 0)
		(calories 130)
		(fat 0)
		(protein 3)
		(carbohydrates 28)
		(cholesterol 0)
	)

	([rico_rico_Class10056] of Ingredient
		(ing-name "Pasta")
		(ing-availability 0)
		(calories 131)
		(fat 1)
		(protein 5)
		(carbohydrates 25)
		(cholesterol 33)
	)
)

(definstances drinks
	([drink0] of Drink
		(drink-name "Water")
		(drink-price 1.20)
		(drink-classification Other)
		(drink-combination All)
	)

	([drink1] of Drink
		(drink-name "Beer")
		(drink-price 2.50)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink2] of Drink
		(drink-name "La Rioja Alta Gran Reserva 1995")
		(drink-price 195.00)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink3] of Drink
		(drink-name "Glorioso Crianza Magnum 2013")
		(drink-price 11.65)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink4] of Drink
		(drink-name "La Vicalanda Gran Reserva 2010")
		(drink-price 45.95)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink5] of Drink
		(drink-name "White Wine")
		(drink-price 10.50)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink6] of Drink
		(drink-name "Tequila")
		(drink-price 14.59)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink7] of Drink
		(drink-name "Sangria")
		(drink-price 10.99)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink8] of Drink
		(drink-name "Whisky Glengarry 12 Years")
		(drink-price 40.45)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink9] of Drink
		(drink-name "Ron Barcelo Imperial")
		(drink-price 30.25)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([drink10] of Drink
		(drink-name "Juice")
		(drink-price 1.30)
		(drink-classification Juice)
		(drink-combination All)
	)

	([drink11] of Drink
		(drink-name "Coffee")
		(drink-price 2.10)
		(drink-classification Caffeine)
		(drink-combination All)
	)

	([drink12] of Drink
		(drink-name "Coffee milk")
		(drink-price 2.20)
		(drink-classification Caffeine)
		(drink-combination All)
	)

	([drink13] of Drink
		(drink-name "Iced coffee")
		(drink-price 2.10)
		(drink-classification Caffeine)
		(drink-combination All)
	)

	([drink14] of Drink
		(drink-name "Hot chocolate")
		(drink-price 2.00)
		(drink-classification Other)
		(drink-combination All)
	)

	([drink15] of Drink
		(drink-name "Tea")
		(drink-price 1.70)
		(drink-classification Other)
		(drink-combination All)
	)

	([drink16] of Drink
		(drink-name "Iced Tea")
		(drink-price 1.70)
		(drink-classification Other)
		(drink-combination All)
	)

	([drink17] of Drink
		(drink-name "Infusion")
		(drink-price 1.70)
		(drink-classification Other)
		(drink-combination All)
	)

	([drink18] of Drink
		(drink-name "Soft drink")
		(drink-price 1.50)
		(drink-classification Other)
		(drink-combination All)
	)

	([drink19] of Drink
		(drink-name "Cocktail")
		(drink-price 3.50)
		(drink-classification Alcohol)
		(drink-combination All)
	)
)

;%%%%%
;%
;% DEFINITIONS
;%
;%%%%%

(defglobal
	?*EVENT_TYPES* = (create$ Familiar Congress)
	?*DRINK_TYPES* = (create$ Alcohol Soft-drinks Caffeine Juice none)
	?*CUISINE_STYLES* = (create$ Vegetarian Spanish Italian French Chinese Japanese Turkish American Mexican Indian Moroccan Gourmet Mediterranean none)
	?*DIETARY_RESTRICTIONS* = (create$ Gluten-free Vegan Vegetarian Lactose-free Kosher Islamic none)
)

;%%%%%
;%
;% FUNCTIONS
;%
;%%%%%

(deffunction ask-question-opt (?question ?allowed-values)
  (printout t "| > " ?question ?allowed-values crlf "| ")
  (bind ?answer (read))
  (while (not (member ?answer ?allowed-values)) do
    (printout t ?question)
    (bind ?answer (read))
	)
  ?answer
)

(deffunction ask-question-yes-no (?question)
	(printout t "| > " ?question crlf "| ")
	(bind ?answer (read))
	(bind ?allowed-values (create$ Yes No yes no Y N y n))
	(while (not (member ?answer ?allowed-values)) do
		(printout t "| > " ?question)
		(bind ?answer (read))
	)
  (if (or (eq ?answer Yes) (eq ?answer yes) (eq ?answer Y) (eq ?answer y)) then
		TRUE
  else
		FALSE
	)
)

(deffunction ask-question-multi-opt (?question ?allowed-values)
	(printout t "| > " ?question ?allowed-values crlf "| ")
	(bind ?line (readline))
	(bind $?answer (explode$ ?line))
  (bind ?valid FALSE)
  (while (not ?valid) do
    (loop-for-count (?i 1 (length$ $?answer)) do
      (bind ?valid FALSE)
      (bind ?value-belongs FALSE)
      (loop-for-count (?j 1 (length$ $?allowed-values)) do
        (if (eq (nth$ ?i $?answer) (nth$ ?j $?allowed-values)) then
        	(bind ?value-belongs TRUE)
          (break)
        )
      )
      (if (not ?value-belongs) then
        (printout t "| " (nth$ ?i $?answer) " is not a valid option" crlf)
        (break)
      )
      (bind ?valid TRUE)
    )
    (if ?valid then (break))

    (printout t "| > " ?question crlf)
    (bind ?line (readline))
    (bind $?answer (explode$ ?line))
  )
  $?answer
)

(deffunction is-num (?num)
  (bind ?ret (or (eq (type ?num) INTEGER) (eq (type ?num) FLOAT))) ?ret
)

(deffunction ask-question-num (?question ?min ?max)
  (printout t "| > " ?question)
  (bind ?answer (read))
  (while (not (and (is-num ?answer) (>= ?answer ?min) (<= ?answer ?max))) do
    (printout t "| " ?question)
  	(bind ?answer (read)))
  ?answer
)

(deffunction collection-contains-all-elements (?all-elements ?collection)
	(loop-for-count (?i 1 (length$ ?all-elements)) do
		(bind ?found FALSE)
		(loop-for-count (?j 1 (length ?collection)) do
			(if (eq (nth$ ?i ?all-elements) (nth$ ?j ?collection)) then
				(bind ?found TRUE)
				(break)
			)
		)
		(if (not ?found) then
			(return FALSE)
		)
	)
	TRUE
)

(deffunction calculate-price-dishes ($?elements)
	(bind ?price 0.0)
	(loop-for-count (?i 1 (length$ ?elements))
		(bind ?price (+ ?price (send (nth$ ?i ?elements) get-dish-price)))
	)
	?price
)

(deffunction print-dishes (?dishes)
  (loop-for-count (?i 1 (length$ ?dishes)) do
    (printout t "| - Name: " (send (nth$ ?i ?dishes) get-dish-name) "." crlf)
    (printout t "| - Ingredients: " (send (nth$ ?i ?dishes) get-dish-ingredients) "." crlf)
    (printout t "| - Price: " (send (nth$ ?i ?dishes) get-dish-price) "." crlf)
  )
)

(deffunction print-menu (?menu ?header)
	(printout t "*---------------------------------------------------" crlf)
	(printout t "| " ?header crlf)
  (printout t "|---------------------------------------------------" crlf)
  (printout t "| Main course - " (send (send ?menu get-main-course) get-dish-name) "." crlf)
  (printout t "| Second course - " (send (send ?menu get-second-course) get-dish-name) "." crlf)
  (printout t "| Dessert - " (send (send ?menu get-dessert) get-dish-name) "." crlf)
  (printout t "| Drink - " (send (send ?menu get-menu-drink) get-drink-name) "." crlf)
	(printout t "| Price - " (send ?menu get-menu-price) "€" crlf)
  (printout t "*---------------------------------------------------" crlf)
)

;%%%%%
;%
;% DETERMINE USER RULES
;%
;%%%%%

(defrule print-welcome-message "Initial program message"
  (declare (salience 0))
  =>
  (printout t "*-------------------------------------------------------------------------------------" crlf)
  (printout t "|                                                               ___          /|      |" crlf)
  (printout t "|     * Eric Dacal                                 ||||     .-''   ''-.     } |      |" crlf)
  (printout t "|     * Josep de Cid                          |||| ||||   .'  .-'`'-.  '.   } | /  \\ |" crlf)
  (printout t "|     * Joaquim Marset                        |||| \\  /  /  .'       '.  \\  } | |()| |" crlf)
  (printout t "|                                             \\  /  ||  /  :           :  \\  \\| \\  / |" crlf)
  (printout t "|                Welcome to                    ||   ||  | :             : |  ||  ||  |" crlf)
  (printout t "|     _____                _____               %%   %%  | :             : |  %%  %%  |" crlf)
  (printout t "|   (, /   ) ,           (, /   ) ,            %%   %%  \\  :           :  /  %%  %%  |" crlf)
  (printout t "|     /__ /    _  _        /__ /    _  _       %%   %%   \\  '.       .'  /   %%  %%  |" crlf)
  (printout t "|  ) /   \\__(_(__(_)    ) /   \\__(_(__(_)      %%   %%    '.  `-.,.-'  .'    %%  %%  |" crlf)
  (printout t "| (_/                  (_/                     %%   %%      '-.,___,.-'      %%  %%  |" crlf)
  (printout t "*-------------------------------------------------------------------------------------" crlf "|" crlf)
)

(defrule determine-event-type "Asks for event type"
	(declare (salience -1))
	(not (event event-type ?))
	=>
	(bind ?type (ask-question-opt "Which type of event will it be? " ?*EVENT_TYPES*))
	(assert (event event-type ?type))
)

(defrule determine-event-date "Asks for dates"
  (declare (salience -2))
  (not (event date ?))
  (not (event month ?))
  (not (event hour ?))
  =>
  (printout t "| Tell me event date " crlf)
  (bind ?day (ask-question-num "Day? " 1 31))
  (bind ?month (ask-question-num "Month? " 1 12))
  (bind ?hour (ask-question-num "Hour? " 0 24))
  (assert (event day ?day))
  (assert (event month ?month))
  (assert (event hour ?hour))
)

(defrule determine-event-guests "Asks for number of assistants"
  (declare (salience -3))
  (not (event guests ?))
  =>
  (bind ?guests (ask-question-num "Number of guests? " 1 10000))
  (assert (event guests ?guests))
)

(defrule determine-preferred-cuisine-styles "Asks for preferred cuisine styles"
  (declare (salience -4))
  (not (event preferred-cuisine-styles $?))
  =>
  (bind $?styles (ask-question-multi-opt "Which cuisine styles do you prefer? " ?*CUISINE_STYLES*))
  (assert (event preferred-cuisine-styles $?styles))
)

(defrule determine-dietary-restrictions "Asks for dietary restrictions"
  (declare (salience -5))
  (not (event dietary-restrictions $?))
  =>
  (bind $?restrictions (ask-question-multi-opt "Any dietary restrictions? " ?*DIETARY_RESTRICTIONS*))
	(assert (event dietary-restrictions ?restrictions))
)

(defrule determine-drinks "Asks for banned drinks and if one drink per dish is required"
	(declare (salience -6))
	(not (or (event drink-per-dish $?) (event drink-types $?)))
	=>
	(bind ?drink-per-dish (ask-question-yes-no "Will you require a drink for each dish? "))
	(bind ?drink-types (ask-question-multi-opt "Would you discard any drinks? " ?*DRINK_TYPES*))
	(assert (event drink-per-dish ?drink-per-dish))
	(assert (event drink-types ?drink-types))
)

(defrule determine-price-range "Asks for event menu price range"
	(declare (salience -7))
	(not (or (event price_min ?) (event price_max ?)))
  =>
  (while TRUE do
		(bind ?price_min (ask-question-num "Minimum price to pay? " 0 10000))
    (bind ?price_max (ask-question-num "Maximum price to pay? " 0 10000))
    (if (>= ?price_max ?price_min) then (break))
    (printout t "| Maximum price must be greater than minimum price" crlf)
  )
  (assert (event price_min ?price_min))
  (assert (event price_max ?price_max))
  (assert (event ready TRUE))
)

;%%%%%
;%
;% RECOMENDATION RULES
;%
;%%%%%

(defrule get-preferred-dish-styles ""
	(event ready ?)
	(event preferred-cuisine-styles $?preferences)
	(event dietary-restrictions $?restrictions)
	=>
	(bind ?dishes (find-all-instances ((?ins Dish))
	(and
    ; Filter non-desired food types
    (or (eq ?preferences (create$ none)) (collection-contains-all-elements ?preferences ?ins:dish-classification))
    ; Filter banned options
    (or (eq ?restrictions (create$ none)) (not (collection-contains-all-elements ?restrictions ?ins:dish-classification)))
  )))
	(assert (dishes ready ?dishes))
)

(defrule generate-menu-combinations "Generates different menu combinations"
	(dishes ready $?dishes)
	=>
	(bind ?drinks (find-all-instances ((?ins Drink)) TRUE))
	(bind ?menus (create$))
	(loop-for-count (?i 1 4) do
		(bind ?menus (insert$ ?menus ?i
			(make-instance (gensym) of Menu
				(main-course (nth$ 1 ?dishes))
				(second-course (nth$ 1 ?dishes))
				(dessert (nth$ 1 ?dishes))
				(menu-drink (nth$ 1 ?drinks))
				(menu-price (calculate-price-dishes (nth$ 1 ?dishes) (nth$ 1 ?dishes) (nth$ 1 ?dishes)))
			)
		))
	)
	(assert (generated-menus ready ?menus))
)

(defrule generate-low-price-menu ""
	(generated-menus ready $?menus)
	=>
	(assert (low-menu ready (nth$ 1 ?menus)))
)

(defrule generate-medium-price-menu ""
	(generated-menus ready $?menus)
	=>
	(assert (medium-menu ready (nth$ 2 ?menus)))
)

(defrule generate-high-price-menu ""
	(generated-menus ready $?menus)
	=>
	(assert (high-menu ready (nth$ 3 ?menus)))
)

(defrule print-recomendations ""
	(low-menu ready ?low-menu)
	(medium-menu ready ?medium-menu)
	(high-menu ready ?high-menu)
	=>
	(print-menu ?low-menu "Cheap menu")
	(print-menu ?medium-menu "Normal menu")
	(print-menu ?high-menu "Expensive menu")
)
