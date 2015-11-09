module people
import pair

data person = maurice | mary

Loves: person -> person
Loves maurice = maurice
Loves mary = maurice

p1: pair person person
p1 = mkPair mary maurice

p2: pair person person
p2 = mkPair maurice mary





