module setTest

import list
import listTest
import set
import nat
import eq

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = mkSet (l2)

s4: set nat
s4 = mkSet (l5)

s5: set nat
s5 = mkSet (l1)

setEq1 : bool
setEq1 = eql s3 s4
--expect true

setEq2: bool
setEq2 = eql s2 s5
--expect false
