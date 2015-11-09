module listTest

import list
import nat
import bool
import eq
import serialize

-- Test Lists
l0: list nat
l0 = nil

l1: list nat
l1 = O :: nil

l2: list nat
l2 = (S O) :: (S (S O)) :: nil

l3: list nat
l3 = (S O) :: (S (S O)) :: (S (S (S O))) :: nil

l4: list nat
l4 = (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

l5: list nat
l5 = ((S (S O)) :: (S O) :: nil)

map1: list bool
map1 = map evenb l4
-- expect (true :: false :: true :: true :: nil)

filter1: list nat
filter1 = filter evenb (l4)
-- expect (O :: (S (S O)) :: (S (S (S (S O)))) :: nil)

isTwo: bool
isTwo = member (S (S O)) l2

isThree: bool
isThree = member (S (S (S O))) l2
