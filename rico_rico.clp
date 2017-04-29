; Sat Apr 29 10:08:32 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
        (is-a USER)
        (role abstract)
        (single-slot alcohol
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot price_max
                (type FLOAT)
                (range 0.0 1000.0)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot price
                (type FLOAT)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot drinks
                (type INSTANCE)
;+              (allowed-classes Drink)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot month
                (type INTEGER)
                (range 1 12)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot price_min
                (type FLOAT)
                (range 0.0 1000.0)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot style
                (type SYMBOL)
                (allowed-values mexican chineese mars)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot ingredients
                (type INSTANCE)
;+              (allowed-classes Ingredient)
                (cardinality 1 ?VARIABLE)
                (create-accessor read-write))
        (single-slot number_eaters
                (type INTEGER)
                (range 1 1000)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot dishes
                (type INSTANCE)
;+              (allowed-classes Dish)
                (cardinality 3 3)
                (create-accessor read-write))
        (single-slot drink
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot type
                (type SYMBOL)
                (allowed-values Familiar Congress)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot name_
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot disponibility_months
                (type SYMBOL)
                (allowed-values January February)
                (cardinality 0 12)
                (create-accessor read-write))
        (single-slot classification
                (type SYMBOL)
                (allowed-values vegetaria carnivor)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot nutritional_values
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot drink_name
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot KB_190605_Class14
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write)))

(defclass Event
        (is-a USER)
        (role concrete)
        (single-slot month
                (type SYMBOL)
                (allowed-values January February March April May June July August September October November December)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot dishes
                (type INSTANCE)
;+              (allowed-classes Dish)
                (cardinality 3 3)
                (create-accessor read-write))
        (single-slot price_max
                (type FLOAT)
                (range 0.0 1000.0)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot type
                (type SYMBOL)
                (allowed-values Familiar Congress)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot drinks
                (type INSTANCE)
;+              (allowed-classes Drink)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot price_min
                (type FLOAT)
                (range 0.0 1000.0)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot number_eaters
                (type INTEGER)
                (range 1 1000)
;+              (cardinality 0 1)
                (create-accessor read-write)))

(defclass Dish
        (is-a USER)
        (role concrete)
        (single-slot classification
                (type SYMBOL)
                (allowed-values vegetaria carnivor)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot style
                (type SYMBOL)
                (allowed-values mexican chineese mars)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot ingredients
                (type INSTANCE)
;+              (allowed-classes Ingredient)
                (cardinality 1 ?VARIABLE)
                (create-accessor read-write)))

(defclass Drink
        (is-a USER)
        (role concrete)
        (single-slot alcohol
                (type SYMBOL)
                (allowed-values FALSE TRUE)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (single-slot drink_name
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write)))

(defclass Ingredient
        (is-a USER)
        (role concrete)
        (single-slot nutritional_values
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot price
                (type FLOAT)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot name_
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (multislot disponibility_months
                (type SYMBOL)
                (allowed-values January February March April May June July August September October November December)
                (cardinality 0 12)
                (create-accessor read-write)))
;%%%%%
;%
;% INSTANCES
;%
;%%%%%

(definstances ingredients
        ([rico_rico_Class10005] of Ingredient
                (disponibility_months 12)
                (name "Fish")
                (nutritional_values "3")
                (price 15.0)) 
)