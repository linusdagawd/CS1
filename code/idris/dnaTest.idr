module dnaTest

import dna
import list
import pair

Comp_G: base
Comp_G = complement_base G

Comp_C: base
Comp_C = complement_base C

Comp_T: base
Comp_T = complement_base T

Comp_A: base
Comp_A = complement_base A

s1: list base
s1 = A :: T :: G :: C :: C :: G :: T :: A :: nil

s2: list base
s2 = A :: T :: G :: C :: T :: nil

s3: list base
s3 = C :: G :: T :: A :: nil

c1: list base
c1 = complement_strand s1
-- expect (T :: A :: C :: G :: G :: C :: A :: T :: nil)

c2: list base
c2 = complement_strand s2
-- expect (T :: A :: C :: G :: A :: nil)

c3: list base
c3 = complement_strand s3
-- expect (G :: C :: A :: T :: nil)

m1: list (pair base base)
m1 = (mkPair A T) :: (mkPair G C) :: (mkPair C G) :: (mkPair T A) :: nil

t1: list base
t1 = strand1 m1
-- expect (A :: G :: C :: T :: nil)

t2: list base
t2 = strand2 m1
-- expect (T :: C :: G :: A :: nil)

complete1: list (pair base base)
complete1 = complete s1
-- expect (mkPair A T :: mkPair T A :: mkPair G C :: mkPair C G :: mkPair C G ::
-- mkPair G C :: mkPair T A :: mkPair A T :: nil)

complete2: list (pair base base)
complete2 = complete s2
-- expect (mkPair A T :: mkPair T A :: mkPair G C :: mkPair C G :: mkPair T A :: nil)

count1: Nat
count1 = countBase A s1
--expect 2

count2: Nat
count2 = countBase C s1
--expect 2

count3: Nat
count3 = countBase A s2
--expect 1
