module nat

import bool

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero (S _) = false

||| returns the successor of any given nat
succ: nat -> nat
succ O = S O
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even, otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S(S n)) = evenb n
