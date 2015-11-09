module relationTest

import relation
import bool
import nat
import list
import pair
import person
import people

--Query 1 Tests
years': Nat
years' = query plus 0 age gender people

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender people

names: String
names = query (++) "" name gender people

--Query 2 Tests
years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

names'': String
names'' = query2 people gender name (++) ""

number: Nat
number = query2 people gender countOne plus 0

-- Mean Tests
avgAge: pair Nat Nat
avgAge = mkPair
           (query2 people gender age plus 0)
           (query2 people gender countOne plus 0)

avgAge': pair Nat Nat
avgAge' = avg_rel people gender age
