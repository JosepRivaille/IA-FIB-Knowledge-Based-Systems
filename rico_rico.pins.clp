(definstances maincourse
	([spaghetti_bolognese] of MainCourse
		(dish-name "Spaghetti Bolognese")
		(dish-classification Italian Mediterranean)
		(dish-ingredients )
		(dish-combination )
		(dish-price 5.50)
	)

	([mediterranean_salad] of MainCourse
		(dish-name "Mediterranean Salad")
		(dish-classification Vegetarian Kosher Spanish Gluten-free Vegan Mediterranean)
		(dish-ingredients )
		(dish-combination )
		(dish-price 2)
	)

	([sweet_and_sour_pork] of MainCourse
		(dish-name "Sweet and Sour Pork")
		(dish-classification Chinese)
		(dish-ingredients )
		(dish-combination )
		(dish-price 4.35)
	)

	([borek] of MainCourse
		(dish-name "Borek")
		(dish-classification Turkey)
		(dish-ingredients )
		(dish-combination )
		(dish-price 7)
	)

	([spanish_omelette] of MainCourse
		(dish-name "Spanish omelette")
		(dish-classification Spanish Mediterranean Lactose-free Gluten-free Vegetarian)
		(dish-ingredients )
		(dish-combination )
		(dish-price 3)
	)

	([tarta_de_santiago] of MainCourse
		(dish-name "Tarta de Santiago")
		(dish-classification Vegetarian Kosher Spanish Classical Mediterranean)
		(dish-ingredients )
		(dish-combination )
		(dish-price 3)
	)

	([tiramisu] of MainCourse
		(dish-name "Tiramisu")
		(dish-classification Kosher Islamic Italian Gourmet)
		(dish-ingredients )
		(dish-combination )
		(dish-price 4)
	)

)
(definstances secondcourse
)
(definstances dessert
)
(definstances drink
	([water] of Drink
		(drink-name "Water")
		(drink-price 1.20)
		(drink-classification Other)
		(drink-combination All)
	)

	([beer] of Drink
		(drink-name "Beer")
		(drink-price 2.50)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([la_rioja_alta_gran_reserva_1995] of Drink
		(drink-name "La Rioja Alta Gran Reserva 1995")
		(drink-price 195.00)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([glorioso_crianza_magnum_2013] of Drink
		(drink-name "Glorioso Crianza Magnum 2013")
		(drink-price 11.65)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([la_vicalanda_gran_reserva_2010] of Drink
		(drink-name "La Vicalanda Gran Reserva 2010")
		(drink-price 45.95)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([white_wine] of Drink
		(drink-name "White Wine")
		(drink-price 10.50)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([tequila] of Drink
		(drink-name "Tequila")
		(drink-price 14.59)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([sangria] of Drink
		(drink-name "Sangria")
		(drink-price 10.99)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([whisky_glengarry_12_years] of Drink
		(drink-name "Whisky Glengarry 12 Years")
		(drink-price 40.45)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([ron_barcelo_imperial] of Drink
		(drink-name "Ron Barcelo Imperial")
		(drink-price 30.25)
		(drink-classification Alcohol)
		(drink-combination All)
	)

	([juice] of Drink
		(drink-name "Juice")
		(drink-price 1.30)
		(drink-classification Juice)
		(drink-combination All)
	)

	([coffee] of Drink
		(drink-name "Coffee")
		(drink-price 2.10)
		(drink-classification Caffeine)
		(drink-combination All)
	)

	([coffee_milk] of Drink
		(drink-name "Coffee milk")
		(drink-price 2.20)
		(drink-classification Caffeine)
		(drink-combination All)
	)

	([iced_coffee] of Drink
		(drink-name "Iced coffee")
		(drink-price 2.10)
		(drink-classification Caffeine)
		(drink-combination All)
	)

	([hot_chocolate] of Drink
		(drink-name "Hot chocolate")
		(drink-price 2.00)
		(drink-classification Other)
		(drink-combination All)
	)

	([tea] of Drink
		(drink-name "Tea")
		(drink-price 1.70)
		(drink-classification Other)
		(drink-combination All)
	)

	([iced_tea] of Drink
		(drink-name "Iced Tea")
		(drink-price 1.70)
		(drink-classification Other)
		(drink-combination All)
	)

	([infusion] of Drink
		(drink-name "Infusion")
		(drink-price 1.70)
		(drink-classification Other)
		(drink-combination All)
	)

	([soft_drink] of Drink
		(drink-name "Soft drink")
		(drink-price 1.50)
		(drink-classification Other)
		(drink-combination All)
	)

	([cocktail] of Drink
		(drink-name "Cocktail")
		(drink-price 3.50)
		(drink-classification Alcohol)
		(drink-combination All)
	)

)
(definstances ingredient
	([artichoke] of Ingredient
		(ing-name "Artichoke")
		(ing-availability 1 2 3 4 5 10 11 12)
		(calories 47)
		(fat 1)
		(protein 3)
		(carbohydrates 11)
		(cholesterol 0)
	)

	([asparagus] of Ingredient
		(ing-name "Asparagus")
		(ing-availability 2 3 4 5 6)
		(calories 20)
		(fat 0)
		(protein 2)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([eggplant] of Ingredient
		(ing-name "Eggplant")
		(ing-availability 6 7 8 9)
		(calories 24)
		(fat 0)
		(protein 1)
		(carbohydrates 6)
		(cholesterol 0)
	)

	([beans] of Ingredient
		(ing-name "Beans")
		(ing-availability 6 7 8 9)
		(calories 347)
		(fat 1)
		(protein 21)
		(carbohydrates 63)
		(cholesterol 0)
	)

	([peas] of Ingredient
		(ing-name "Peas")
		(ing-availability 6 7 8 9)
		(calories 81)
		(fat 1)
		(protein 5)
		(carbohydrates 14)
		(cholesterol 0)
	)

	([broccoli] of Ingredient
		(ing-name "Broccoli")
		(ing-availability 4 5 6 7 8 9 10)
		(calories 0)
		(fat 33)
		(protein 3)
		(carbohydrates 7)
		(cholesterol 0)
	)

	([cabbage] of Ingredient
		(ing-name "Cabbage")
		(ing-availability 6 7 8 9)
		(calories 24)
		(fat 0)
		(protein 1)
		(carbohydrates 6)
		(cholesterol 0)
	)

	([carrot] of Ingredient
		(ing-name "Carrot")
		(ing-availability 7 8 9 10)
		(calories 41)
		(fat 0)
		(protein 1)
		(carbohydrates 19)
		(cholesterol 0)
	)

	([cauliflower] of Ingredient
		(ing-name "Cauliflower")
		(ing-availability 8 9 10 11 12)
		(calories 24)
		(fat 0)
		(protein 2)
		(carbohydrates 5)
		(cholesterol 0)
	)

	([celery] of Ingredient
		(ing-name "Celery")
		(ing-availability 0)
		(calories 16)
		(fat 0)
		(protein 0)
		(carbohydrates 3)
		(cholesterol 0)
	)

	([lettuce] of Ingredient
		(ing-name "Lettuce")
		(ing-availability 4 5 6 7 8 9)
		(calories 14)
		(fat 0)
		(protein 1)
		(carbohydrates 3)
		(cholesterol 0)
	)

	([corn] of Ingredient
		(ing-name "Corn")
		(ing-availability 6 7 8 9 10)
		(calories 365)
		(fat 5)
		(protein 9)
		(carbohydrates 74)
		(cholesterol 0)
	)

	([garlic] of Ingredient
		(ing-name "Garlic")
		(ing-availability 0)
		(calories 148)
		(fat 1)
		(protein 6)
		(carbohydrates 33)
		(cholesterol 0)
	)

	([onion] of Ingredient
		(ing-name "Onion")
		(ing-availability 0)
		(calories 39)
		(fat 0)
		(protein 1)
		(carbohydrates 9)
		(cholesterol 0)
	)

	([pepper] of Ingredient
		(ing-name "Pepper")
		(ing-availability 6 7 8 9 10)
		(calories 39)
		(fat 0)
		(protein 2)
		(carbohydrates 9)
		(cholesterol 0)
	)

	([spinach] of Ingredient
		(ing-name "Spinach")
		(ing-availability 1 2 11 12)
		(calories 23)
		(fat 0)
		(protein 3)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([cucumber] of Ingredient
		(ing-name "Cucumber")
		(ing-availability 5 6 7 8 9)
		(calories 15)
		(fat 0)
		(protein 1)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([tomato] of Ingredient
		(ing-name "Tomato")
		(ing-availability 0)
		(calories 17)
		(fat 0)
		(protein 1)
		(carbohydrates 4)
		(cholesterol 0)
	)

	([potato] of Ingredient
		(ing-name "Potato")
		(ing-availability 0)
		(calories 76)
		(fat 0)
		(protein 2)
		(carbohydrates 17)
		(cholesterol 0)
	)

	([apple] of Ingredient
		(ing-name "Apple")
		(ing-availability 0)
		(calories 52)
		(fat 0)
		(protein 0)
		(carbohydrates 14)
		(cholesterol 0)
	)

	([banana] of Ingredient
		(ing-name "Banana")
		(ing-availability 0)
		(calories 88)
		(fat 0)
		(protein 1)
		(carbohydrates 23)
		(cholesterol 0)
	)

	([grape] of Ingredient
		(ing-name "Grape")
		(ing-availability 9 10 11)
		(calories 66)
		(fat 0)
		(protein 1)
		(carbohydrates 17)
		(cholesterol 0)
	)

	([kiwi] of Ingredient
		(ing-name "Kiwi")
		(ing-availability 10 11 12)
		(calories 60)
		(fat 1)
		(protein 1)
		(carbohydrates 15)
		(cholesterol 0)
	)

	([lemon] of Ingredient
		(ing-name "Lemon")
		(ing-availability 0)
		(calories 28)
		(fat 0)
		(protein 1)
		(carbohydrates 9)
		(cholesterol 0)
	)

	([mango] of Ingredient
		(ing-name "Mango")
		(ing-availability 5 6 7 8)
		(calories 59)
		(fat 0)
		(protein 1)
		(carbohydrates 15)
		(cholesterol 0)
	)

	([melon] of Ingredient
		(ing-name "Melon")
		(ing-availability 6 7 8)
		(calories 33)
		(fat 0)
		(protein 1)
		(carbohydrates 8)
		(cholesterol 0)
	)

	([orange] of Ingredient
		(ing-name "Orange")
		(ing-availability 1 2 3 10 11 12)
		(calories 47)
		(fat 0)
		(protein 1)
		(carbohydrates 12)
		(cholesterol 0)
	)

	([peach] of Ingredient
		(ing-name "Peach")
		(ing-availability 6 7 8)
		(calories 39)
		(fat 0)
		(protein 1)
		(carbohydrates 10)
		(cholesterol 0)
	)

	([pear] of Ingredient
		(ing-name "Pear")
		(ing-availability 8 9 10)
		(calories 57)
		(fat 0)
		(protein 0)
		(carbohydrates 15)
		(cholesterol 0)
	)

	([strawberry] of Ingredient
		(ing-name "Strawberry")
		(ing-availability 3 4 5 6 7)
		(calories 32)
		(fat 0)
		(protein 1)
		(carbohydrates 8)
		(cholesterol 0)
	)

	([pineapple] of Ingredient
		(ing-name "Pineapple")
		(ing-availability 0)
		(calories 50)
		(fat 0)
		(protein 0)
		(carbohydrates 13)
		(cholesterol 0)
	)

	([almonds] of Ingredient
		(ing-name "Almonds")
		(ing-availability 0)
		(calories 580)
		(fat 50)
		(protein 21)
		(carbohydrates 21)
		(cholesterol 0)
	)

	([pork] of Ingredient
		(ing-name "Pork")
		(ing-availability 0)
		(calories 242)
		(fat 14)
		(protein 27)
		(carbohydrates 0)
		(cholesterol 80)
	)

	([bacon] of Ingredient
		(ing-name "Bacon")
		(ing-availability 0)
		(calories 540)
		(fat 42)
		(protein 37)
		(carbohydrates 1)
		(cholesterol 110)
	)

	([beef] of Ingredient
		(ing-name "Beef")
		(ing-availability 0)
		(calories 250)
		(fat 15)
		(protein 26)
		(carbohydrates 0)
		(cholesterol 90)
	)

	([chicken] of Ingredient
		(ing-name "Chicken")
		(ing-availability 0)
		(calories 239)
		(fat 14)
		(protein 27)
		(carbohydrates 0)
		(cholesterol 88)
	)

	([duck] of Ingredient
		(ing-name "Duck")
		(ing-availability 0)
		(calories 337)
		(fat 28)
		(protein 19)
		(carbohydrates 0)
		(cholesterol 84)
	)

	([lamb] of Ingredient
		(ing-name "Lamb")
		(ing-availability 0)
		(calories 294)
		(fat 21)
		(protein 25)
		(carbohydrates 0)
		(cholesterol 97)
	)

	([turkey] of Ingredient
		(ing-name "Turkey")
		(ing-availability 0)
		(calories 188)
		(fat 7)
		(protein 29)
		(carbohydrates 0)
		(cholesterol 109)
	)

	([veal] of Ingredient
		(ing-name "Veal")
		(ing-availability 0)
		(calories 172)
		(fat 8)
		(protein 24)
		(carbohydrates 0)
		(cholesterol 103)
	)

	([abalone] of Ingredient
		(ing-name "Abalone")
		(ing-availability 0)
		(calories 189)
		(fat 20)
		(protein 11)
		(carbohydrates 0)
		(cholesterol 94)
	)

	([anchovy] of Ingredient
		(ing-name "Anchovy")
		(ing-availability 0)
		(calories 210)
		(fat 10)
		(protein 29)
		(carbohydrates 0)
		(cholesterol 85)
	)

	([cockle] of Ingredient
		(ing-name "Cockle")
		(ing-availability 0)
		(calories 79)
		(fat 1)
		(protein 13)
		(carbohydrates 5)
		(cholesterol 52)
	)

	([crab] of Ingredient
		(ing-name "Crab")
		(ing-availability 0)
		(calories 97)
		(fat 2)
		(protein 19)
		(carbohydrates 0)
		(cholesterol 53)
	)

	([crawfish] of Ingredient
		(ing-name "Crawfish")
		(ing-availability 0)
		(calories 87)
		(fat 1)
		(protein 18)
		(carbohydrates 0)
		(cholesterol 137)
	)

	([cuttlefish] of Ingredient
		(ing-name "Cuttlefish")
		(ing-availability 0)
		(calories 158)
		(fat 1)
		(protein 32)
		(carbohydrates 2)
		(cholesterol 224)
	)

	([halibut] of Ingredient
		(ing-name "Halibut")
		(ing-availability 0)
		(calories 185)
		(fat 14)
		(protein 14)
		(carbohydrates 0)
		(cholesterol 46)
	)

	([prawn] of Ingredient
		(ing-name "Prawn")
		(ing-availability 0)
		(calories 99)
		(fat 0)
		(protein 24)
		(carbohydrates 0)
		(cholesterol 189)
	)

	([salmon] of Ingredient
		(ing-name "Salmon")
		(ing-availability 0)
		(calories 208)
		(fat 13)
		(protein 20)
		(carbohydrates 0)
		(cholesterol 55)
	)

	([tuna] of Ingredient
		(ing-name "Tuna")
		(ing-availability 0)
		(calories 184)
		(fat 6)
		(protein 30)
		(carbohydrates 0)
		(cholesterol 49)
	)

	([cheese] of Ingredient
		(ing-name "Cheese")
		(ing-availability 0)
		(calories 402)
		(fat 33)
		(protein 25)
		(carbohydrates 1)
		(cholesterol 105)
	)

	([chocolate] of Ingredient
		(ing-name "Chocolate")
		(ing-availability 0)
		(calories 545)
		(fat 31)
		(protein 43)
		(carbohydrates 61)
		(cholesterol 8)
	)

	([eggs] of Ingredient
		(ing-name "Eggs")
		(ing-availability 0)
		(calories 155)
		(fat 11)
		(protein 13)
		(carbohydrates 1)
		(cholesterol 373)
	)

	([milk] of Ingredient
		(ing-name "Milk")
		(ing-availability 0)
		(calories 43)
		(fat 1)
		(protein 3)
		(carbohydrates 5)
		(cholesterol 5)
	)

	([yogurt] of Ingredient
		(ing-name "Yogurt")
		(ing-availability 0)
		(calories 58)
		(fat 1)
		(protein 10)
		(carbohydrates 4)
		(cholesterol 5)
	)

	([butter] of Ingredient
		(ing-name "Butter")
		(ing-availability 0)
		(calories 71)
		(fat 81)
		(protein 0)
		(carbohydrates 0)
		(cholesterol 215)
	)

	([wheat_flour] of Ingredient
		(ing-name "Wheat flour")
		(ing-availability 0)
		(calories 364)
		(fat 1)
		(protein 10)
		(carbohydrates 76)
		(cholesterol 0)
	)

	([bread] of Ingredient
		(ing-name "Bread")
		(ing-availability 0)
		(calories 264)
		(fat 3)
		(protein 9)
		(carbohydrates 49)
		(cholesterol 0)
	)

	([cookies] of Ingredient
		(ing-name "Cookies")
		(ing-availability 0)
		(calories 140)
		(fat 8)
		(protein 2)
		(carbohydrates 15)
		(cholesterol 25)
	)

	([rice] of Ingredient
		(ing-name "Rice")
		(ing-availability 0)
		(calories 130)
		(fat 0)
		(protein 3)
		(carbohydrates 28)
		(cholesterol 0)
	)

	([pasta] of Ingredient
		(ing-name "Pasta")
		(ing-availability 0)
		(calories 131)
		(fat 1)
		(protein 5)
		(carbohydrates 25)
		(cholesterol 33)
	)

	([sugar] of Ingredient
		(ing-name "Sugar")
		(ing-availability 0)
		(calories 387)
		(fat 0)
		(protein 100)
		(carbohydrates 0)
		(cholesterol 0)
	)

	([piper] of Ingredient
		(ing-name "Piper")
		(ing-availability 0)
		(calories 251)
		(fat 3)
		(protein 64)
		(carbohydrates 10)
		(cholesterol 0)
	)

	([oil] of Ingredient
		(ing-name "Oil")
		(ing-availability 0)
		(calories 884)
		(fat 100)
		(protein 0)
		(carbohydrates 0)
		(cholesterol 0)
	)

	([vinegar] of Ingredient
		(ing-name "Vinegar")
		(ing-availability 0)
		(calories 18)
		(fat 0)
		(protein 0)
		(carbohydrates 0)
		(cholesterol 0)
	)

	([sesame] of Ingredient
		(ing-name "Sesame")
		(ing-availability 0)
		(calories 573)
		(fat 50)
		(protein 18)
		(carbohydrates 23)
		(cholesterol 0)
	)

)
