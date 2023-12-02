
(: sequential (-> Expression %Undefined%))
(= (sequential $1) (superpose $1))

!(sequential ((add-atom &self (man mortal))
              (match &self ($a mortal) (mortal $a))))
