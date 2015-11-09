module list

import nat
import pair

data list a = nil | cons a (list a)

l0: list_nat
l0 = nil

l1: list_nat
l1 = cons O l0

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) (nil))))

length: list_nat -> nat
length (nil) = O
length (cons (n) (l')) = S(length l')

--Test Case
len_l3: nat
len_l3 = length l3

appd: list_nat -> list_nat -> list_nat
appd nil a = a
appd (cons h t) (cons x y) = cons h (appd t (cons x y))
