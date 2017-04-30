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
		(allowed-values Vegetarian Kosher Islamic Spanish Italian French Chinese Japanese Turkish American Mexican Indian Moroccan Gourmet Gluten-free Vegan Lactose-free Mediterranean)
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

(definstances Ingredient
		([rico_rico_Class10000] of  Ingredient

			(calories 47)
			(carbohydrates 11)
			(cholesterol 0)
			(fat 1)
			(ing-availability 1 2 3 4 5 10 11 12)
			(ing-name "Artichoke")
			(protein 3))

		([rico_rico_Class10001] of  Ingredient

			(calories 20)
			(carbohydrates 4)
			(cholesterol 0)
			(fat 0)
			(ing-availability 2 3 4 5 6)
			(ing-name "Asparagus")
			(protein 2))

		([rico_rico_Class10002] of  Ingredient

			(calories 24)
			(carbohydrates 6)
			(cholesterol 0)
			(fat 0)
			(ing-availability 6 7 8 9)
			(ing-name "Eggplant")
			(protein 1))

		([rico_rico_Class10003] of  Ingredient

			(calories 347)
			(carbohydrates 63)
			(cholesterol 0)
			(fat 1)
			(ing-availability 6 7 8 9)
			(ing-name "Beans")
			(protein 21))

		([rico_rico_Class10004] of  Ingredient

			(calories 81)
			(carbohydrates 14)
			(cholesterol 0)
			(fat 1)
			(ing-availability 6 7 8 9)
			(ing-name "Peas")
			(protein 5))

		([rico_rico_Class10005] of  Ingredient

			(calories 0)
			(carbohydrates 7)
			(cholesterol 0)
			(fat 33)
			(ing-availability 4 5 6 7 8 9 10)
			(ing-name "Broccoli")
			(protein 3))

		([rico_rico_Class10006] of  Ingredient

			(calories 24)
			(carbohydrates 6)
			(cholesterol 0)
			(fat 0)
			(ing-availability 6 7 8 9)
			(ing-name "Cabbage")
			(protein 1))

		([rico_rico_Class10007] of  Ingredient

			(calories 41)
			(carbohydrates 19)
			(cholesterol 0)
			(fat 0)
			(ing-availability 7 8 9 10)
			(ing-name "Carrot")
			(protein 1))

		([rico_rico_Class10008] of  Ingredient

			(calories 24)
			(carbohydrates 5)
			(cholesterol 0)
			(fat 0)
			(ing-availability 8 9 10 11 12)
			(ing-name "Cauliflower")
			(protein 2))

		([rico_rico_Class10009] of  Ingredient

			(calories 14)
			(carbohydrates 3)
			(cholesterol 0)
			(fat 0)
			(ing-availability 4 5 6 7 8 9)
			(ing-name "Lettuce")
			(protein 1))

		([rico_rico_Class10010] of  Ingredient

			(calories 365)
			(carbohydrates 74)
			(cholesterol 0)
			(fat 5)
			(ing-availability 6 7 8 9 10)
			(ing-name "Corn")
			(protein 9))

		([rico_rico_Class10011] of  Ingredient

			(calories 148)
			(carbohydrates 33)
			(cholesterol 0)
			(fat 1)
			(ing-availability 0)
			(ing-name "Garlic")
			(protein 6))

		([rico_rico_Class10012] of  Ingredient

			(calories 39)
			(carbohydrates 9)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Onion")
			(protein 1))

		([rico_rico_Class10013] of  Ingredient

			(calories 39)
			(carbohydrates 9)
			(cholesterol 0)
			(fat 0)
			(ing-availability 6 7 8 9 10)
			(ing-name "Pepper")
			(protein 2))

		([rico_rico_Class10014] of  Ingredient

			(calories 23)
			(carbohydrates 4)
			(cholesterol 0)
			(fat 0)
			(ing-availability 1 2 11 12)
			(ing-name "Spinach")
			(protein 3))

		([rico_rico_Class10015] of  Ingredient

			(calories 15)
			(carbohydrates 4)
			(cholesterol 0)
			(fat 0)
			(ing-availability 5 6 7 8 9)
			(ing-name "Cucumber")
			(protein 1))

		([rico_rico_Class10016] of  Ingredient

			(calories 17)
			(carbohydrates 4)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Tomato")
			(protein 1))

		([rico_rico_Class10017] of  Ingredient

			(calories 76)
			(carbohydrates 17)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Potato")
			(protein 2))

		([rico_rico_Class10018] of  Ingredient

			(calories 52)
			(carbohydrates 14)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Apple")
			(protein 0))

		([rico_rico_Class10019] of  Ingredient

			(calories 88)
			(carbohydrates 23)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Banana")
			(protein 1))

		([rico_rico_Class10020] of  Ingredient

			(calories 66)
			(carbohydrates 17)
			(cholesterol 0)
			(fat 0)
			(ing-availability 9 10 11)
			(ing-name "Grape")
			(protein 1))

		([rico_rico_Class10021] of  Ingredient

			(calories 60)
			(carbohydrates 15)
			(cholesterol 0)
			(fat 1)
			(ing-availability 10 11 12)
			(ing-name "Kiwi")
			(protein 1))

		([rico_rico_Class10022] of  Ingredient

			(calories 28)
			(carbohydrates 9)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Lemon")
			(protein 1))

		([rico_rico_Class10023] of  Ingredient

			(calories 59)
			(carbohydrates 15)
			(cholesterol 0)
			(fat 0)
			(ing-availability 5 6 7 8)
			(ing-name "Mango")
			(protein 1))

		([rico_rico_Class10024] of  Ingredient

			(calories 33)
			(carbohydrates 8)
			(cholesterol 0)
			(fat 0)
			(ing-availability 6 7 8)
			(ing-name "Melon")
			(protein 1))

		([rico_rico_Class10025] of  Ingredient

			(calories 47)
			(carbohydrates 12)
			(cholesterol 0)
			(fat 0)
			(ing-availability 1 2 3 10 11 12)
			(ing-name "Orange")
			(protein 1))

		([rico_rico_Class10026] of  Ingredient

			(calories 39)
			(carbohydrates 10)
			(cholesterol 0)
			(fat 0)
			(ing-availability 6 7 8)
			(ing-name "Peach")
			(protein 1))

		([rico_rico_Class10027] of  Ingredient

			(calories 57)
			(carbohydrates 15)
			(cholesterol 0)
			(fat 0)
			(ing-availability 8 9 10)
			(ing-name "Pear")
			(protein 0))

		([rico_rico_Class10028] of  Ingredient

			(calories 32)
			(carbohydrates 8)
			(cholesterol 0)
			(fat 0)
			(ing-availability 3 4 5 6 7)
			(ing-name "Strawberry")
			(protein 1))

		([rico_rico_Class10029] of  Ingredient

			(calories 540)
			(carbohydrates 1)
			(cholesterol 110)
			(fat 42)
			(ing-availability 0)
			(ing-name "Bacon")
			(protein 37))

		([rico_rico_Class10030] of  Ingredient

			(calories 250)
			(carbohydrates 0)
			(cholesterol 90)
			(fat 15)
			(ing-availability 0)
			(ing-name "Beef")
			(protein 26))

		([rico_rico_Class10031] of  Ingredient

			(calories 239)
			(carbohydrates 0)
			(cholesterol 88)
			(fat 14)
			(ing-availability 0)
			(ing-name "Chicken")
			(protein 27))

		([rico_rico_Class10032] of  Ingredient

			(calories 337)
			(carbohydrates 0)
			(cholesterol 84)
			(fat 28)
			(ing-availability 0)
			(ing-name "Duck")
			(protein 19))

		([rico_rico_Class10033] of  Ingredient

			(calories 294)
			(carbohydrates 0)
			(cholesterol 97)
			(fat 21)
			(ing-availability 0)
			(ing-name "Lamb")
			(protein 25))

		([rico_rico_Class10034] of  Ingredient

			(calories 188)
			(carbohydrates 0)
			(cholesterol 109)
			(fat 7)
			(ing-availability 0)
			(ing-name "Turkey")
			(protein 29))

		([rico_rico_Class10035] of  Ingredient

			(calories 172)
			(carbohydrates 0)
			(cholesterol 103)
			(fat 8)
			(ing-availability 0)
			(ing-name "Veal")
			(protein 24))

		([rico_rico_Class10036] of  Ingredient

			(calories 189)
			(carbohydrates 0)
			(cholesterol 94)
			(fat 20)
			(ing-availability 0)
			(ing-name "Abalone")
			(protein 11))

		([rico_rico_Class10037] of  Ingredient

			(calories 210)
			(carbohydrates 0)
			(cholesterol 85)
			(fat 10)
			(ing-availability 0)
			(ing-name "Anchovy")
			(protein 29))

		([rico_rico_Class10038] of  Ingredient

			(calories 79)
			(carbohydrates 5)
			(cholesterol 52)
			(fat 1)
			(ing-availability 0)
			(ing-name "Cockle")
			(protein 13))

		([rico_rico_Class10039] of  Ingredient

			(calories 97)
			(carbohydrates 0)
			(cholesterol 53)
			(fat 2)
			(ing-availability 0)
			(ing-name "Crab")
			(protein 19))

		([rico_rico_Class10040] of  Ingredient

			(calories 87)
			(carbohydrates 0)
			(cholesterol 137)
			(fat 1)
			(ing-availability 0)
			(ing-name "Crawfish")
			(protein 18))

		([rico_rico_Class10041] of  Ingredient

			(calories 158)
			(carbohydrates 2)
			(cholesterol 224)
			(fat 1)
			(ing-availability 0)
			(ing-name "Cuttlefish")
			(protein 32))

		([rico_rico_Class10042] of  Ingredient

			(calories 185)
			(carbohydrates 0)
			(cholesterol 46)
			(fat 14)
			(ing-availability 0)
			(ing-name "Halibut")
			(protein 14))

		([rico_rico_Class10043] of  Ingredient

			(calories 99)
			(carbohydrates 0)
			(cholesterol 189)
			(fat 0)
			(ing-availability 0)
			(ing-name "Prawn")
			(protein 24))

		([rico_rico_Class10044] of  Ingredient

			(calories 208)
			(carbohydrates 0)
			(cholesterol 55)
			(fat 13)
			(ing-availability 0)
			(ing-name "Salmon")
			(protein 20))

		([rico_rico_Class10045] of  Ingredient

			(calories 184)
			(carbohydrates 0)
			(cholesterol 49)
			(fat 6)
			(ing-availability 0)
			(ing-name "Tuna")
			(protein 30))

		([rico_rico_Class10046] of  Ingredient

			(calories 402)
			(carbohydrates 1)
			(cholesterol 105)
			(fat 33)
			(ing-availability 0)
			(ing-name "Cheese")
			(protein 25))

		([rico_rico_Class10047] of  Ingredient

			(calories 545)
			(carbohydrates 61)
			(cholesterol 8)
			(fat 31)
			(ing-availability 0)
			(ing-name "Chocolate")
			(protein 43))

		([rico_rico_Class10048] of  Ingredient

			(calories 155)
			(carbohydrates 1)
			(cholesterol 373)
			(fat 11)
			(ing-availability 0)
			(ing-name "Eggs")
			(protein 13))

		([rico_rico_Class10049] of  Ingredient

			(calories 43)
			(carbohydrates 5)
			(cholesterol 5)
			(fat 1)
			(ing-availability 0)
			(ing-name "Milk")
			(protein 3))

		([rico_rico_Class10050] of  Ingredient

			(calories 58)
			(carbohydrates 4)
			(cholesterol 5)
			(fat 1)
			(ing-availability 0)
			(ing-name "Yogurt")
			(protein 10))

		([rico_rico_Class10051] of  Ingredient

			(calories 264)
			(carbohydrates 49)
			(cholesterol 0)
			(fat 3)
			(ing-availability 0)
			(ing-name "Bread")
			(protein 9))

		([rico_rico_Class10052] of  Ingredient

			(calories 140)
			(carbohydrates 15)
			(cholesterol 25)
			(fat 8)
			(ing-availability 0)
			(ing-name "Cookies")
			(protein 2))

		([rico_rico_Class10053] of  Ingredient

			(calories 130)
			(carbohydrates 28)
			(cholesterol 0)
			(fat 0)
			(ing-availability 0)
			(ing-name "Rice")
			(protein 3))

		([rico_rico_Class10054] of  Ingredient

			(calories 131)
			(carbohydrates 25)
			(cholesterol 33)
			(fat 1)
			(ing-availability 0)
			(ing-name "Pasta")
			(protein 5))
)


;%%%%%
;%
;% DEFINITIONS
;%
;%%%%%

(defglobal
        ?*CUISINE_STYLES* = (create$ Indian Mexican Chineese none)
        ?*MONTHS* = (create$ January February March April May June July August September October November December)
)

;%%%%%
;%
;% FUNCTIONS
;%
;%%%%%

(deffunction ask-question-opt (?question $?allowed-values)
        (printout t ?question)
        (bind ?answer (read))
        (while (not (member ?answer ?allowed-values)) do
                (printout t ?question)
                (bind ?answer (read))
                (if (lexemep ?answer)
                        then (bind ?answer ?answer)))
        ?answer
)

(deffunction ask-question-multi-opt (?question $?allowed-values)
        (printout t ?question crlf "Allowed answers -> " $?allowed-values crlf)
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
                                (printout t (nth$ ?i $?answer) " is not a valid option" crlf)
                                (break)
                        )
                        (bind ?valid TRUE)
                )
                (if ?valid then (break))

                (printout t ?question crlf)
                (bind ?line (readline))
                (bind $?answer (explode$ ?line))
        )
        $?answer
)

(deffunction is-num (?num)
        (bind ?ret (or (eq (type ?num) INTEGER) (eq (type ?num) FLOAT))) ?ret
)

(deffunction ask-question-num (?question ?min ?max)
        (printout t ?question)
        (bind ?answer (read))
        (while (not (and (is-num ?answer) (>= ?answer ?min) (<= ?answer ?max))) do
                (printout t ?question)
                (bind ?answer (read)))
        ?answer
)

(deffunction print-menus ()
        (bind $?menus (find-all-instances ((?ins Ingredient)) TRUE))
        (loop-for-count (?i 1 (length$ ?menus)) do
                (printout t "----------------------------------------------------" crlf)
                (printout t "- Ingredient - " (send (nth$ ?i $?menus) get-ingredient_name) "." crlf)
                ;(printout t "- Main course - " (send (send (nth$ ?i ?menus) get_main_course) get_ingredient_name) ". " crlf)
                ;(printout t "- Second course - " (send (send (nth$ ?i ?menus) get_second_course) get_name) ". " crlf)
                ;(printout t "- Dessert - " (send (send (nth$ ?i ?menus) get_dessert) get_name) ". " crlf)
                ;(printout t "- Drink - " (send (send (nth$ ?i ?menus) get_drink) get_name) ". " crlf)
                (printout t "----------------------------------------------------" crlf)
        )
)

;%%%%%
;%
;% RULES
;%
;%%%%%

(defrule print-welcome-message "Initial program message"
        (declare (salience 0))
        =>
        (printout t "--------------------------------------------------------------------------------------" crlf)
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
        (printout t "--------------------------------------------------------------------------------------" crlf)
)

(defrule determine-event-date "Asks for dates"
        (declare (salience -1))
        (not (event date ?))
        (not (event month ?))
        (not (event hour ?))
        =>
        (printout t "Tell me event date " crlf)
        (bind ?day (ask-question-num "Day? " 1 31))
        (bind ?month (ask-question-opt "Month? " ?*MONTHS*))
        (bind ?hour (ask-question-num "Hour? " 0 24))
        (assert (event day ?day))
        (assert (event month ?month))
        (assert (event hour ?hour))
)

(defrule determine-event-guests "Asks for number of assistants"
        (declare (salience -2))
        (not (event guests ?))
        =>
        (bind ?guests (ask-question-num "Number of guests? " 1 10000))
        (assert (event guests ?guests))
)

(defrule determine-preferred-cuisine-styles "Asks for preferred cuisine styles"
        (declare (salience -3))
        (not (event preferred-cuisine-styles $?))
        =>
        (bind $?styles (ask-question-multi-opt "Which cuisine styles do you prefer? " ?*CUISINE_STYLES*))
        (assert (event preferred-cuisine-styles $?styles))

)

(defrule determine-price-range "Asks for event menu price range"
        (declare (salience -4))
        (not (or (event price_min ?) (event price_max ?)))
        =>
        (while TRUE do
                (bind ?price_min (ask-question-num "Minimum price to pay? " 0 10000))
                (bind ?price_max (ask-question-num "Maximum price to pay? " 0 10000))
                (if (>= ?price_max ?price_min) then (break))
                (printout t "Maximum price must be greater than minimum price" crlf)
        )
        (assert (event price_min ?price_min))
        (assert (event price_max ?price_max))
)
