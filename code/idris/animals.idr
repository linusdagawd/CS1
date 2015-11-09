module AnimalPair
import pair

data a = bird|dog|cat
data b = x|y

p1: pair a b
p1 = mkPair bird x

p2: pair a b
p2 = mkPair dog y

p3: pair a b
p3 = mkPair cat x

