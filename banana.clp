
(defrule robusta
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose cooking|cooking)
   (duration 11)
   (pest 2|0)
      =>
   (assert (banana_type robusta))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Robusta Plant Morphology: semi-tall and little thus less susceptible to wind damage  height of plant is 2.6m color of the stem is Medium Green Bunch position : Horizontal"))
   )

(defrule dwarf_cavendish
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose fruit)
   (duration 12)
   (pest 4|0)
      =>
   (assert (banana_type dwarf_cavendish))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Dwarf Cavendish Plant Morphology: dwarf thus less susceptible to wind damage  height of plant is less than 1.7m color of the stem is Medium Green Bunch position : Horizontal  Shelf life / Keeping quality is poor")))


(defrule nendran
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose cooking|cooking)
   (duration 11)
   (pest 5|0)
      =>
   (assert (banana_type nendran))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Nendran commonly called plantains Fruits have a distinct neck with thick green skin turning buff yellow on  ripening  height of plant is 3m thus highly susceptible to wind damage color of the stem is Medium Green Bunch position : Horizontal  Shelf life / Keeping quality is good thus favoring long distance transportation")))

(defrule red
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose fruit)
   (duration 13)
   (pest 3|4|0)
      =>
   (assert (banana_type red))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Kappavazha commonly called red banana Fairly large sized fruit turns its color from deep brown to dark red as it ripens.   height of plant is 3.2m thus highly susceptible to wind damage color of the stem is Red purple Bunch position : Horizontal  Shelf life / Keeping quality is good thus favoring long distance transportation This variety is costlier than others thus good for commercial purposes")))

(defrule poovan
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose fruit)
   (duration 11)
   (pest 3|2|0)
      =>
   (assert (banana_type poovan))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Njalipoovan commonly called poovan Fairly large sized fruit that is slightly angled turns its color to yellow as it ripens.   height of plant is 3.2m thus highly susceptible to wind damage color of the stem is medium green Bunch position : Horizontal  Shelf life / Keeping quality is poor")))

(defrule palayankodan
   (zone_temp warm|hot)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose fruit)
   (duration 12)
   (pest 1|4|3|2|0)
      =>
   (assert (banana_type palayankodan))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Palayankodan Fairly small sized fruit turns its color from medium green to yellow as it ripens.   height of plant is 2.6m thus susceptible to wind damage color of the stem is medium green Bunch position : Horizontal  Shelf life / Keeping quality is poor It has a cooling effect on places of very hot and humid conditions.")))

(defrule monthan
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose fruit)
   (duration 13)
   (pest 7|5|0)
      =>
   (assert (banana_type monthan))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as monthan Fairly small sized fruit turns its color from medium green to yellow as it ripens.   height of plant is 3.5m thus highly susceptible to wind damage color of the stem is medium green Bunch position : Horizontal  Shelf life / Keeping quality is poor Pseudostem core is a highly relished vegecooking with various medicinal properties")))

(defrule safed
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose cooking|cooking)
   (duration 13)
   (pest 0)
      =>
   (assert (banana_type safed))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Safed Velchi Fairly medium sized fruit turns its color from medium green to yellow as it ripens.   height of plant is 2.7m but has a slender stem thus highly susceptible to wind damage color of the stem is yellowish green Bunch position : Horizontal  Shelf life / Keeping quality is poor ")))

(defrule elakki
   (zone_temp warm)
   (zone_precipitation medium)
   (soil_type loamy)
   (soil_ph neutral)
   (purpose fruit)
   (duration 14)
   (pest 3|0)
      =>
   (assert (banana_type elakki))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Elakki Bale Fairly small sized fruit turns its color from dark green to golden yellow .   height of plant is 2.6m thus susceptible to wind damage color of the stem is medium green Bunch position : Horizontal  Shelf life / Keeping quality is good thus commercially viable Fruit is highly fragrant, tasty, powdery and firm.")))

(defrule sakkai
   (zone_temp hot|warm)
   (zone_precipitation little|medium)
   (soil_type loamy|sandy)
   (soil_ph neutral|acidic)
   (purpose fruit|cooking)
   (duration 14)
   (pest 7|0)
      =>
   (assert (banana_type sakkai))
   
   (assert (advice  "The most preferred banana plant variety to grow is known as Sakkai Fruits are short, stout and have no knob height of plant is 2.0m thus unsusceptible to wind damage color of the stem is dark green with red petioles Bunch position : vertical  Shelf life / Keeping quality is good thus commercially viable Sakkai is a dual purpose variety")))

(defrule varietyless
(zone_temp cold)
(zone_precipitation heavy)
(soil_type clay)

=>
(assert (banana_type none))
(assert (advice  "The climatic conditions in your zone do not favor the cultivation of bananas. Kindly consider reasearching into other crops or fruits favorable to grow in your zone. Thank You "))
)