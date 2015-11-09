module list

import nat
import pair

data list a = nil | cons a (list a)

l0: list nat
l0 = nil

l1: list nat
l1 = cons O l0

l2: list nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) (nil))))

length: list a -> nat
length (nil) = O
length (cons (n) (l')) = S(length l')

--Test Case
len_l3: nat
len_l3 = length l3

append: list a -> list a -> list a
append nil a = a
append (cons h t) (cons x y) = cons h (append t (cons x y))
