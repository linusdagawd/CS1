module set_adt_test

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import serialize
import list
import ite

--Test sets
s0: set nat
s0 = emptySet

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S (S O)) s1

s3: set bool
s3 = (mkSet (true :: false :: nil))

s4: set bool
s4 = (mkSet (false :: true :: nil))

s5: set nat
s5 = mkSet ((S (S O)) :: (S (S (S O))) :: (S O) :: (S (S (S (S O)))) :: nil)

s6: set nat
s6 = mkSet ((S (S (S O))) :: (S O) :: nil)


-- Implementation tests

--IsEmpty tests

i0: bool
i0 = isEmpty s0
-- expect true

i1: bool
i1 = isEmpty s1
--expect false

-- set_insert tests

si1: set nat
si1 = set_insert (S (S (S O))) s1
-- expect (mkSet ((S (S (S O))) :: (S O) :: nil))

si2: set nat
si2 = set_insert (S (S O)) s0
--expect mkSet ((S (S O)) :: nil)


-- Set_Remove tests

sr1: set nat
sr1 = set_remove (S O) s2
--expect mkSet ((S (S O)) :: nil)



-- Set_Cardinality tests

sc1: nat
sc1 = set_cardinality (s3)
-- expect (S (S O))

sc2: nat
sc2 = set_cardinality s5
--expect (S (S (S (S O))))


-- Set_Member tests

sm1: bool
sm1 = set_member true s3
--expect true

sm2: bool
sm2 = set_member (S O) s1
--expect true

sm3: bool
sm3 = set_member (S (S O)) s1
--expect false

-- Set_Union Tests

su1: set nat
su1 = set_union s1 s2
--expect mkSet ((S (S O)) :: (S O) :: nil)

su2: set nat
su2 = set_union s1 s6
--expect (mkSet ((S (S (S O))) :: S O :: nil))


--set_intersection tests

sint1: set nat
sint1 = set_intersection s1 s6
-- expect mkSet (S O :: nil)

sint2: set nat
sint2 = set_intersection s5 s6
--expect mkSet ((S (S (S O))) :: (S O) :: nil)


--set_difference tests

sd1: set nat
sd1 = set_difference s6 s1
-- expect mkSet ((S (S (S O))) :: nil)

sd2: set nat
sd2 = set_difference s5 s6
--expect mkSet ((S (S O)) :: (S (S (S (S O)))) :: nil)


-- set_forall test

sf1: bool
sf1 = set_forall evenb s6
-- expect false

sf2: bool
sf2 = set_forall oddb s6
--expect true


--set_exists test

se1: bool
se1 = set_exists evenb s6
-- expect false

se2: bool
se2 = set_exists evenb s5
--expect true


-- set_witness tests

sw1: option nat
sw1 = set_witness evenb s5
--expect some (S (S O))

sw2: option nat
sw2 = set_witness evenb s6
--expect none

-- set_product tests

p1: set (pair nat nat)
p1 = set_product s2 s6
--expect mkSet{(mkPair (S (S O)) (S (S (S O)))), (mkPair (S (S O)) (S O)), (mkPair(S O) (S (S (S O)))), (mkPair(S O) (S O))}

p2: set (pair nat bool)
p2 = set_product s2 s3
-- expect mkSet{mkPair ((S O) true), mkPair((S O) false), mkPair((S (S O)) true), mkPair((S (S O)) false)}
