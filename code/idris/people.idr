module People

import person
import list
import bool

--a few Persons

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 55 true

ge: Person
ge = mkPerson "Ge" 18 60 true

daryl: Person
daryl = mkPerson "Daryl" 22 60 false

-- a list of Persons

people: list Person
people = tom::mary::ge::daryl::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h) :: (mapAge t)

--map: (a -> b) -> list a -> list b
-- map f (h::t) = (f h)::(map f t)
