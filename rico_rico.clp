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
        (single-slot ingredient_name
                (type STRING)
;+              (cardinality 0 1)
                (create-accessor read-write))
        (single-slot price
                (type FLOAT)
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
        ([rico_rico_Class10005] of  Ingredient
                (ingredient_name "Fish")
                (nutritional_values "3")
                (price 15.0))
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
