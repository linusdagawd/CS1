module Person

import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name, an age in
||| years, and height in inches,
||| and a gender indicated by a bool
record Person where
    constructor mkPerson
    name : String
    age : Nat
    height: Nat
    gender: bool

-- An example value of type Person
p: Person
p = mkPerson "Tommy" 3 56 false

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

--Example person #2
p1: Person
p1 = mkPerson "John" 14 60 false

t1: Nat
t1 = age p1

n1: String
n1 = name p1

setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p
