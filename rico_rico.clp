; Thu May 04 17:12:47 CEST 2017
;
;+ (version "3.5")
;+ (build "Build 663")

;%%%%%
;%
;% DEFINITIONS
;%
;%%%%%

(defglobal
	?*EVENT_TYPES* = (create$ Familiar Congress)
	?*DRINK_TYPES* = (create$ Alcohol Soft-drinks Caffeine Juice none)
	?*CUISINE_STYLES* = (create$ Mediterranean Spanish Italian French Chinese Japanese Turkish American Mexican Indian Moroccan Gourmet any)
	?*DIETARY_RESTRICTIONS* = (create$ Gluten-free Vegan Vegetarian Lactose-free Kosher Islamic none)
)

;%%%%%
;%
;% FUNCTIONS
;%
;%%%%%

(deffunction ask-question-yes-no (?question)
	(printout t "| > " ?question crlf "| ")
	(bind ?answer (read))
	(bind ?allowed-values (create$ Yes No yes no Y N y n))
	(while (not (member$ ?answer ?allowed-values)) do
		(printout t "| > " ?question crlf "| ")
		(bind ?answer (read))
	)
  (if (or (eq ?answer Yes) (eq ?answer yes) (eq ?answer Y) (eq ?answer y)) then
		TRUE
  else
		FALSE
	)
)

(deffunction ask-question-opt (?question ?allowed-values)
  (printout t "| > " ?question ?allowed-values crlf "| ")
  (bind ?answer (read))
  (while (not (member$ ?answer ?allowed-values)) do
    (printout t "| > " ?question crlf "| ")
    (bind ?answer (read))
	)
  ?answer
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
        (printout t "| > " (nth$ ?i $?answer) " is not a valid option" crlf)
        (break)
      )
      (bind ?valid TRUE)
    )
    (if ?valid then (break))

    (printout t "| > " ?question crlf "| ")
    (bind ?line (readline))
    (bind $?answer (explode$ ?line))
  )
  $?answer
)

(deffunction ask-question-date-format (?question)
	(printout t "| > " ?question crlf "| ")
	(while TRUE do
		(bind ?date (readline))
		(bind $?answer (explode$ ?date))
		(if (not (eq (length$ ?answer) 3)) then
			(printout t "| > Incorrect format, date should have the format HH DD MM" crlf "| ")
		else (if (and
			(and (>= (nth$ 1 ?answer) 0) (<= (nth$ 1 ?answer) 24))
			(and (>= (nth$ 2 ?answer) 1) (<= (nth$ 2 ?answer) 31))
			(and (>= (nth$ 3 ?answer) 1) (<= (nth$ 3 ?answer) 12))
		) then
			(break)
		else
			(printout t "| > Check that date is valid" crlf "| ")
		))
	)
	?answer
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

(deffunction collection-contains-alo-element (?elements ?collection)
	(loop-for-count (?i 1 (length$ ?elements)) do
		(loop-for-count (?j 1 (length$ ?collection)) do
			(if (eq (nth$ ?i ?elements) (nth$ ?j ?collection)) then
				(return TRUE)
			)
		)
	)
	FALSE
)


(deffunction collection-contains-all-elements (?elements ?collection)
	(loop-for-count (?i 1 (length$ ?elements)) do
		(bind ?found FALSE)
		(loop-for-count (?j 1 (length$ ?collection)) do
			(if (eq (nth$ ?i ?elements) (nth$ ?j ?collection)) then
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

(deffunction calculate-price-drinks ($?elements)
	(bind ?price 0.0)
	(loop-for-count (?i 1 (length$ ?elements))
		(bind ?price (+ ?price (send (nth$ ?i ?elements) get-drink-price)))
	)
	?price
)

(deffunction calculate-price-dishes ($?elements)
	(bind ?price 0.0)
	(loop-for-count (?i 1 (length$ ?elements))
		(bind ?price (+ ?price (send (nth$ ?i ?elements) get-dish-price)))
	)
	?price
)

(deffunction are-different-and-combine (?first-dish ?second-dish)
	(if (not (eq (send ?first-dish get-dish-name) (send ?second-dish get-dish-name))) then
		(if (and
			(collection-contains-alo-element (send ?first-dish get-dish-combination) (send ?second-dish get-dish-classification))
			(collection-contains-alo-element (send ?second-dish get-dish-combination) (send ?first-dish get-dish-classification))
		) then
			(return TRUE)
		)
	)
	FALSE
)

(deffunction is-easy-enough (?guests ?dish-difficulty)
	(if (< ?dish-difficulty 4) then
		(return TRUE)
	)
	(<= ?dish-difficulty (- 10 (div ?guests 100)))
)

(deffunction all-ingredients-available (?month ?ingredients)
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?availability (send (nth$ ?i ?ingredients) get-ing-availability))
		(if (and
			(not (member$ 0 ?availability))
			(not (member$ ?month ?availability))) then
				(return FALSE)
		)
	)
	TRUE
)

(deffunction calculate-non-helathy (?ingredient)
	(+
		(/ (send ?ingredient get-calories) 500)
		(/ (send ?ingredient get-fat) 200)
		(/ (send ?ingredient get-cholesterol) 100)
	)
)

(deffunction variety-nutrition (?ingredient)
	(bind ?protein (send ?ingredient get-protein))
	(bind ?fat (send ?ingredient get-fat))
	(bind ?carbohydrates (send ?ingredient get-carbohydrates))
	(bind ?total (+ ?protein ?fat ?carbohydrates))

	(bind ?protein (abs (- 35 (* 100 (/ ?protein ?total)))))
	(bind ?fat (abs (- 25 (* 100 (/ ?fat ?total)))))
	(bind ?carbohydrates (abs (- 45 (* 100 (/ ?carbohydrates ?total)))))

	(/ (+ ?protein ?fat ?carbohydrates) 100)
)

(deffunction heuristic-variety-main-second (?main-classification ?second-classification)
	(bind ?score 40)
	(loop-for-count (?i 1 (length$ ?main-classification))
		(if (member$ (nth$ ?i ?main-classification) ?second-classification) then
			(bind ?score (- ?score 3))
		)
	)
	(max ?score 0)
)

(deffunction heuristic-healthy (?menu) "Decrese the heuristic if the food contains more calories, fats or cholesterol"
	(bind ?score 30)
	(bind ?ingredients (send (send ?menu get-main-course) get-dish-ingredients))
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?score (- ?score (calculate-non-helathy (nth$ ?i ?ingredients))))
	)
	(bind ?ingredients (send (send ?menu get-second-course) get-dish-ingredients))
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?score (- ?score (calculate-non-helathy (nth$ ?i ?ingredients))))
	)
	(bind ?ingredients (send (send ?menu get-dessert) get-dish-ingredients))
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?score (- ?score (calculate-non-helathy (nth$ ?i ?ingredients))))
	)
	(max ?score 0)
)

(deffunction heuristic-variety-nutrition (?menu)
	(bind ?score 30)
	(bind ?ingredients (send (send ?menu get-main-course) get-dish-ingredients))
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?score (- ?score (variety-nutrition (nth$ ?i ?ingredients))))
	)
	(bind ?ingredients (send (send ?menu get-second-course) get-dish-ingredients))
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?score (- ?score (variety-nutrition (nth$ ?i ?ingredients))))
	)
	(bind ?ingredients (send (send ?menu get-dessert) get-dish-ingredients))
	(loop-for-count (?i 1 (length$ ?ingredients)) do
		(bind ?score (- ?score (variety-nutrition (nth$ ?i ?ingredients))))
	)
	(max ?score 0)
)

(deffunction calculate-menu-score (?menu)
	(bind ?main-classification (send (send ?menu get-main-course) get-dish-classification))
	(bind ?second-classification (send (send ?menu get-second-course) get-dish-classification))
	(+
		(heuristic-variety-main-second ?main-classification ?second-classification)
		(heuristic-healthy ?menu)
		(heuristic-variety-nutrition ?menu)
	)
)

(deffunction calculate-dpd-menu-score (?menu)
	(calculate-menu-score ?menu)
)

(deffunction calculate-menu-valoration (?menu ?price-factor ?score-factor)
	(bind ?valoration (-
		(* (send ?menu get-menu-score) ?score-factor)
		(* (send ?menu get-menu-price) ?price-factor)
	))

	(printout t ?score-factor " - " (send ?menu get-menu-score) " - " (* (send ?menu get-menu-score) ?score-factor)
		" | " ?price-factor  " - " (send ?menu get-menu-price) " - " (* (send ?menu get-menu-price) ?price-factor) crlf)

	(return ?valoration)
)

(deffunction get-menu-valoration (?menus ?price-factor ?score-factor)
	(bind ?best-index 1)
	(bind ?best-value (calculate-menu-valoration (nth$ 1 ?menus) ?price-factor ?score-factor))
	(loop-for-count (?i 2 (length$ ?menus)) do
		(bind ?value (calculate-menu-valoration (nth$ ?i ?menus) ?price-factor ?score-factor))
		(if (< ?value ?best-value) then
			(bind ?best-index ?i)
			(bind ?best-value ?value)
		)
	)
	(nth$ ?best-index ?menus)
)

(deffunction print-menu (?menu ?header ?drink-per-dish)
  (if ?drink-per-dish then
		(printout t "*-------------------------------------------------------------------------------------" crlf)
		(printout t "| " ?header crlf)
		(printout t "|-------------------------------------------------------------------------------------" crlf)
		(printout t "| Main course - " (send (send ?menu get-main-course) get-dish-name) "." crlf)
		(printout t "| - Drink - " (send (send ?menu get-main-course-drink) get-drink-name) "." crlf)
		(printout t "| Second course - " (send (send ?menu get-second-course) get-dish-name) "." crlf)
		(printout t "| - Drink - " (send (send ?menu get-second-course-drink) get-drink-name) "." crlf)
		(printout t "| Dessert - " (send (send ?menu get-dessert) get-dish-name) "." crlf)
		(printout t "| - Drink - " (send (send ?menu get-dessert-drink) get-drink-name) "." crlf)
		(printout t "| Price - " (send ?menu get-menu-price) "€" crlf)
		(printout t "*-------------------------------------------------------------------------------------" crlf)
	else
		(printout t "*-------------------------------------------------------------------------------------" crlf)
		(printout t "| " ?header crlf)
		(printout t "|-------------------------------------------------------------------------------------" crlf)
		(printout t "| Main course - " (send (send ?menu get-main-course) get-dish-name) "." crlf)
		(printout t "| Second course - " (send (send ?menu get-second-course) get-dish-name) "." crlf)
		(printout t "| Dessert - " (send (send ?menu get-dessert) get-dish-name) "." crlf)
		(printout t "| Drink - " (send (send ?menu get-menu-drink) get-drink-name) "." crlf)
		(printout t "| Price - " (send ?menu get-menu-price) "€" crlf)
		(printout t "*-------------------------------------------------------------------------------------" crlf)
  )
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
  (printout t "|     * Eric Dacal                                 ||||     .-''   ''-.     } |  __  |" crlf)
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
  (not (and (event day ?) (event month ?) (event hour ?)))
  =>
  (bind $?answer (ask-question-date-format "Tell me the event data [HH DD MM]"))
	(bind ?hour (nth$ 1 ?answer))
	(bind ?day (nth$ 2 ?answer))
	(bind ?month (nth$ 3 ?answer))
	(assert (event hour ?hour))
  (assert (event day ?day))
  (assert (event month ?month))
)

(defrule determine-event-guests "Asks for number of assistants"
  (declare (salience -3))
  (not (event guests ?))
  =>
  (bind ?guests (ask-question-num "How many guests will there be? " 1 10000))
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
	(not (and (event drink-per-dish ?) (event drink-types ?)))
	=>
	(bind ?drink-per-dish (ask-question-yes-no "Will you require a drink for each dish? "))
	(bind ?drink-types (ask-question-multi-opt "Would you discard any drinks? " ?*DRINK_TYPES*))
	(if ?drink-per-dish then
		(assert (event drink-per-dish TRUE))
	)
	(assert (event drink-types ?drink-types))
)

(defrule determine-price-range "Asks for event menu price range"
	(declare (salience -7))
	(not (and (event price_min ?) (event price_max ?)))
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
;% FILTER RULES
;%
;%%%%%

(defrule get-possible-main-courses "Filters forbbiden or impossible main courses"
  (event ready ?)
	(event guests ?guests)
	(event month ?month)
	(event preferred-cuisine-styles $?preferences)
  (event dietary-restrictions $?restrictions)
	=>
	(bind ?main-courses (find-all-instances ((?ins MainCourse))
	(and
    ; Filter non-desired food types
		(or (eq ?preferences (create$ any)) (collection-contains-alo-element ?preferences ?ins:dish-classification))
    ; Filter banned options
    (or (eq ?restrictions (create$ none)) (collection-contains-all-elements ?restrictions ?ins:dish-classification))
		; Filter non available Ingredients
		(all-ingredients-available ?month ?ins:dish-ingredients)
		; Filter difficulty
		(is-easy-enough ?guests ?ins:dish-difficulty)
  )))
	(assert (main-courses ?main-courses))
)

(defrule get-possible-second-courses "Filters forbbiden second courses"
  (event ready ?)
	(event guests ?guests)
	(event month ?month)
	(event preferred-cuisine-styles $?preferences)
  (event dietary-restrictions $?restrictions)
	=>
	(bind ?second-courses (find-all-instances ((?ins SecondCourse))
	(and
    ; Filter non-desired food types
		(or (eq ?preferences (create$ any)) (collection-contains-alo-element ?preferences ?ins:dish-classification))
    ; Filter banned options
    (or (eq ?restrictions (create$ none)) (collection-contains-all-elements ?restrictions ?ins:dish-classification))
		; Filter non available Ingredients
		(all-ingredients-available ?month ?ins:dish-ingredients)
		; Filter difficulty
		(is-easy-enough ?guests ?ins:dish-difficulty)
  )))
	(assert (second-courses ?second-courses))
)

(defrule get-possible-desserts "Filters forbbiden desserts"
  (event ready ?)
	(event guests ?guests)
	(event month ?month)
	(event preferred-cuisine-styles $?preferences)
  (event dietary-restrictions $?restrictions)
	=>
	(bind ?desserts (find-all-instances ((?ins Dessert))
		(and
			; Filter non-desired food types
			(or (eq ?preferences (create$ any)) (collection-contains-alo-element ?preferences ?ins:dish-classification))
	    ; Filter banned options
	    (or (eq ?restrictions (create$ none)) (collection-contains-all-elements ?restrictions ?ins:dish-classification))
			; Filter non available Ingredients
			(all-ingredients-available ?month ?ins:dish-ingredients)
			; Filter difficulty
			(is-easy-enough ?guests ?ins:dish-difficulty)
	)))
	(assert (desserts ?desserts))
)

(defrule get-possible-drink "Filters forbbiden drinks"
  (event ready ?)
	(event drink-types $?drink-types)
  =>
  (bind ?drinks (find-all-instances((?ins Drink))
  	; Filter non-desired drink types
		(or (eq ?drink-types (create$ none)) (not (collection-contains-alo-element ?drink-types ?ins:drink-classification)))
	))
	(bind ?main-drinks (create$))
	(bind ?second-drinks (create$))
	(bind ?dessert-drinks (create$))
	(bind ?general-drinks (create$))
	(loop-for-count (?i 1 (length$ ?drinks)) do
		(progn$ (?type (send (nth$ ?i ?drinks) get-drink-type))
			(switch ?type
				(case M then (bind ?main-drinks (insert$ ?main-drinks (+ (length$ ?main-drinks) 1) (nth$ ?i ?drinks))))
				(case S then (bind ?second-drinks (insert$ ?second-drinks (+ (length$ ?second-drinks) 1) (nth$ ?i ?drinks))))
				(case D then (bind ?dessert-drinks (insert$ ?dessert-drinks (+ (length$ ?dessert-drinks) 1) (nth$ ?i ?drinks))))
				(case G then (bind ?general-drinks (insert$ ?general-drinks (+ (length$ ?general-drinks) 1) (nth$ ?i ?drinks))))
			)
		)
	)
	(assert (main-drinks ?main-drinks))
	(assert (second-drinks ?second-drinks))
	(assert (dessert-drinks ?dessert-drinks))
	(assert (general-drinks ?general-drinks))
)

;%%%%%
;%
;% RECOMENDATION RULES
;%
;%%%%%

(defrule generate-menu-with-main "Creates menu fact with first course"
  (declare (salience -11))
	(main-courses $?main-courses)
	=>
	(loop-for-count (?i 1 (length$ ?main-courses)) do
		(assert (generated-menu (nth$ ?i ?main-courses)))
	)
)

(defrule add-second-to-menu "Adds fact with first and second courses"
  (declare (salience -11))
	(second-courses $?second-courses)
	?gm <- (generated-menu ?main)
	=>
	(loop-for-count (?i 1 (length$ ?second-courses)) do
		(if (are-different-and-combine ?main (nth$ ?i ?second-courses)) then
			(assert (generated-menu ?main (nth$ ?i ?second-courses)))
		)
	)
	(retract ?gm)
)

(defrule add-dessert-to-menu "Adds fact with first course, second course and dessert"
  (declare (salience -11))
	(desserts $?desserts)
	?gm <- (generated-menu ?main ?second)
	=>
	(loop-for-count (?i 1 (length$ ?desserts)) do
		(if
			(and
				(are-different-and-combine ?main (nth$ ?i ?desserts))
				(are-different-and-combine ?second (nth$ ?i ?desserts))
			) then
			(assert (generated-menu ?main ?second (nth$ ?i ?desserts)))
		)
	)
	(retract ?gm)
)

(defrule generate-menu-drink "Adds drink to previous menu facts"
  (declare (salience -11))
	(not (event drink-per-dish ?))
	(general-drinks $?drinks)
	?gm <- (generated-menu ?main ?second ?dessert)
	=>
	(loop-for-count (?i 1 (length$ ?drinks)) do
		(assert (generated-menu ?main ?second ?dessert (nth$ ?i ?drinks)))
	)
	(retract ?gm)
)

(defrule generate-menu-main-drink ""
  (declare (salience -11))
	(event drink-per-dish ?)
	(main-drinks $?drinks)
	?gm <- (generated-menu ?main ?second ?dessert)
	=>
	(loop-for-count (?i 1 (length$ ?drinks)) do
		(assert (generated-menu ?main ?second ?dessert (nth$ ?i ?drinks)))
	)
  (retract ?gm)
)

(defrule generate-menu-second-drink ""
  (declare (salience -11))
	(event drink-per-dish ?)
	(second-drinks $?drinks)
	?gm <- (generated-menu ?main ?second ?dessert ?main-drink)
	=>
	(loop-for-count (?i 1 (length$ ?drinks)) do
		(assert (generated-menu ?main ?second ?dessert ?main-drink (nth$ ?i ?drinks)))
	)
	(retract ?gm)
)

(defrule generate-menu-dessert-drink ""
  (declare (salience -11))
	(event drink-per-dish ?)
	(event drink-per-dish ?)
	(dessert-drinks $?drinks)
	?gm <- (generated-menu ?main ?second ?dessert ?main-drink ?second-drink)
	=>
	(loop-for-count (?i 1 (length$ ?drinks)) do
		(assert (generated-menu ?main ?second ?dessert ?main-drink ?second-drink (nth$ ?i ?drinks)))
	)
  (retract ?gm)
)

(defrule validate-general-menu ""
  (declare (salience -11))
	(not (event drink-per-dish ?))
	(event price_min ?price-min)
	(event price_max ?price-max)
	?gm <- (generated-menu ?main ?second ?dessert ?drink)
	=>
	(bind ?total-price (+ (calculate-price-drinks ?drink) (calculate-price-dishes ?main ?second ?dessert)))
	(if (and (>= ?total-price ?price-min) (<= ?total-price ?price-max)) then
		(bind ?ins
			(make-instance (gensym) of Menu
				(main-course ?main)
				(second-course ?second)
				(dessert ?dessert)
				(menu-drink ?drink)
				(menu-price ?total-price)
			)
		)
		(send ?ins put-menu-score (calculate-menu-score ?ins))
	)
	(retract ?gm)
)

(defrule validate-drink-per-dish-menu ""
	(declare (salience -11))
  (event drink-per-dish ?)
	(event price_min ?price-min)
	(event price_max ?price-max)
	?gm <- (generated-menu ?main ?second ?dessert ?main-drink ?second-drink ?dessert-drink)
	=>
	(bind ?total-price (+
		(calculate-price-drinks ?main-drink ?second-drink ?dessert-drink)
		(calculate-price-dishes ?main ?second ?dessert)
	))
	(if (and (>= ?total-price ?price-min) (<= ?total-price ?price-max)) then
		(bind ?ins
			(make-instance (gensym) of Menu
				(main-course ?main)
				(main-course-drink ?main-drink)
				(second-course ?second)
				(second-course-drink ?second-drink)
				(dessert ?dessert)
				(dessert-drink ?dessert-drink)
				(menu-price ?total-price)
			)
		)
		(send ?ins put-menu-score (calculate-dpd-menu-score ?ins))
	)
	(retract ?gm)
)

(defrule check-generated-menus "Checks if enough menus generated"
  (declare (salience -12))
	(not (generated-menu ? ? ? ?))
  (not (generated-menu ? ? ? ? ? ?))
  =>
  (bind ?menus (find-all-instances ((?ins Menu)) TRUE))
	(if (>= (length$ ?menus) 3) then
		(assert (generated-menus low-menu ?menus))
		(assert (generated-menus medium-menu ?menus))
		(assert (generated-menus high-menu ?menus))
	else
		(printout t "| Not enough matching dishes to generate 3 different menus." crlf)
		(if (= (length$ ?menus) 0) then
			(printout t "*-------------------------------------------------------------------------------------" crlf)
		else
			(printout t "| Generated menus will be listed below." crlf)
			(assert (generated-menus all-menus ?menus))
		)
	)
)

(defrule generate-low-price-menu "Generate low price menu"
	(generated-menus low-menu $?menus)
	=>
	(assert (cheap-menu (get-menu-valoration ?menus 0.2 1.5)))
)

(defrule generate-medium-price-menu "Generate medium price menu"
	(generated-menus medium-menu $?menus)
	=>
	(assert (medium-menu (get-menu-valoration ?menus 0.5 0.5)))
)

(defrule generate-high-price-menu "Generates higher price menu"
	(generated-menus high-menu $?menus)
	=>
	(assert (expensive-menu (get-menu-valoration ?menus 0.8 0.6)))
)

(defrule print-all-menu "Prints all menus"
	(declare (salience -13))
	(generated-menus all-menus $?menus)
	=>
	(loop-for-count (?i 1 (length$ ?menus)) do
		(assert (printable-menu (nth$ ?i ?menus) "Menu"))
  )
)

(defrule print-recomendations "Prints three recommended menus"
	(cheap-menu ?cheap-menu)
	(medium-menu ?medium-menu)
	(expensive-menu ?expensive-menu)
	=>
	(assert (printable-menu ?expensive-menu "Expensive menu"))
	(assert (printable-menu ?medium-menu "Medium menu"))
	(assert (printable-menu ?cheap-menu "Cheap menu"))
)

(defrule print-menu-single-drink ""
	(declare (salience -13))
	(not (event drink-per-dish ?))
	(printable-menu ?menu ?header)
	=>
	(print-menu ?menu ?header FALSE)
	(assert (printed TRUE))
)

(defrule print-menu-drink-per-dish ""
	(declare (salience -13))
	(event drink-per-dish ?)
	(printable-menu ?menu ?header)
	=>
	(print-menu ?menu ?header TRUE)
	(assert (printed TRUE))
)

(defrule print-bon-appetit "Elegant ASCII draw"
	(declare (salience -14))
	(printed ?)
	=>
	(printout t "|                  ___/___/" crlf)
  (printout t "|                  \\,/ \\,/" crlf)
	(printout t "|                   |   |" crlf)
	(printout t "|                 __|___|__" crlf)
	(printout t "|                [_________]" crlf)
	(printout t "|       ,,,,,,      _|//" crlf)
	(printout t "|       , , ::       | /" crlf)
	(printout t "|       <    D        =o" crlf)
	(printout t "|       |.   /       /\\|" crlf)
	(printout t "|   _____|><|_______/o /" crlf)
	(printout t "|  / '==| :: |=='  <  /" crlf)
	(printout t "| /  \\  <    >  /____/" crlf)
	(printout t "|/  _/\\ | :: | /" crlf)
	(printout t "*-------------------------------------------------------------------------------------" crlf)
)
