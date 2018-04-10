(defrule GetSkinColor
   =>
   (printout t "What is the color of the Skin? yellow or green or red")
   (bind ?response (read))
   (assert (skin_color ?response)))

(defrule GetLength
   =>
   (printout t "What is the estimated length of the banana? 5inches or 10inches or 15inches")
   (bind ?response (read))
   (assert (length ?response)))

(defrule GetFleshColor
   =>
   (printout t "What is the color of the flesh? whitish or cream or pinkish" crlf)
   (bind ?response (read))
   (assert (flesh_color ?response)))

(defrule GetWidth
   =>
   (printout t "What is the width of the banana? thin or fatter" crlf)
   (bind ?response (read))
   (assert (width ?response)))

;(defrule GetInnoculated
;   (fever high)
 ;  (spots yes)
  ; =>
   ;(printout t "Has the patient been innoculated for measles (yes or no): ")
;   (bind ?response (read))
;   (assert (innoculated ?response)))



(defrule Plantain
   (skin_color green)
      =>
   (assert (skin_color green))
   (printout t "The banana is a Plantain" crlf))

(defrule YellowBananas
   (skin_color yellow)
      =>
   (assert (skin_color yellow))
   (printout t "The banana is in the cavendish group" crlf))

(defrule Red
   (skin_color red|brown)
      =>
   (assert (skin_color red))
   
   (printout t "The banana is a Red" crlf))

(defrule LadyFingers
   (skin_color yellow)
   (length 5|5inches)
      =>
   (assert (length 5))
   
   (printout t "The banana is a Lady Finger commonly known as Sweet bananas" crlf))

(defrule CandyApple
   (skin_color yellow)
   (length 5|5inches)
   (flesh_color pink|pinkish)
      =>
   (assert (flesh_color pink))
   
   (printout t "The banana is a Candy Apple Banana commonly known as Manzano" crlf))

(defrule burro
   (skin_color green)
   (length 10|10inches)
   (flesh_color white)
   (width fat|fatter)
      =>
   (assert (width fat))
   
   (printout t "The banana is a Burro Banana" crlf))
