module dna

import pair
import list
import bool


data base = A | T | G | C

complement_base: base -> base
complement_base (A) = T
complement_base (T) = A
complement_base (G) = C
complement_base (C) = G

complement_pair: base -> pair base base
complement_pair b = (mkPair b (complement_base b))

complement_strand: list base -> list base
complement_strand (nil) = nil
complement_strand (h::t) = complement_base h :: (map complement_base t)


strand1: list (pair base base) -> list base
strand1 (nil) = nil
strand1 (h :: t) = fst h :: (map fst t)

strand2: list (pair base base) -> list base
strand2 (nil) = nil
strand2 (h :: t) = snd h :: (map snd t)

complete: list base -> list (pair base base)
complete l1 = map complement_pair l1

matchBase: base -> (base -> Nat)
matchBase A A = 1
matchBase T T = 1
matchBase C C = 1
matchBase G G = 1
matchBase _ _ = 0

countBase: base -> list base -> Nat
countBase b1 (h::t) = (list.foldr plus 0) ((matchBase b1 h) :: map (matchBase b1) t)
