module natTest
import nat
import pair
import bool

-- zero
ztest: nat
ztest = O

-- one
otest: nat
otest = S O

-- two
ttest: nat
ttest = S (S O)

-- three
rtest: nat
rtest = S ttest

-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.
-- four
ftest: nat
ftest = S rtest

-- five
itest: nat
itest = S ftest

-- six
stest: nat
stest = S itest

-- seven
vtest: nat
vtest = S stest

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb rtest

e: bool
e = evenb (S rtest)

-- HOMEWORK #7 Bind x to the result of applying isZero to r. Add your
-- code below this comment

x: bool
x = isZero rtest

||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))

-- #5 Test Cases
||| a test, expecting (S O)
t1:  nat
t1 = exp (S O) O

||| a test, expecting (S (S O))
t2: nat
t2 = exp (S (S O)) (S O)

||| a test, expecting (S (S (S (S O))))
t3: nat
t3 = exp (S (S O)) (S (S O))

--#6 Test Cases
||| a test, expecting true
l1: bool
l1 = le  O (S O)

||| a test, expecting false
l2: bool
l2 = le (S O) O

||| a test, expecting true
l3: bool
l3 = le (S O) (S O)

-- #7 Test Cases
||| a test, expecting true
e1: bool
e1 = eq O O

||| a test, expecting false
e2: bool
e2 = eq (S O) O

|||a test, expecting true
e3: bool
e3 = eq (S O) (S O)


--#8 Test Cases
||| a Test, expecting false
g1: bool
g1 = gt O O

||| a test, expecting true
g2: bool
g2 = gt (S O) O

||| a test, expecting false
g3: bool
g3 = gt (S O) (S (S O))

||| a test, expecting false
g4: bool
g4 = gt (S O) (S O)

--#9 Test Cases
||| a test, expecting true
g5: bool
g5 = ge O O

||| a test, expecting true
g6: bool
g6 = ge (S O) O

||| a test, expecting false
g7: bool
g7 = ge O (S O)

||| a test, expecting true
g8: bool
g8 = ge (S O) (S O)

-- #10 Test Cases
||| a test, expecting false
l4: bool
l4 = lt (S O) O

||| a test, expecting true
l5: bool
l5 = lt O (S O)

||| a test, expecting false
l6: bool
l6 = lt (S O) (S O)

--#11 Test Cases - Fibbonacci numbers
||| a test, expecting O
f1: nat
f1 = fib O

||| a test, expecting (S O)
f2: nat
f2 = fib (S O)

||| a test, expecting (S O)
f3: nat
f3 = fib (S (S O))

||| a test, expecting (S (S O)))
f4: nat
f4 = fib (S (S (S O)))

||| a test, expecting (S (S (S O)))
f5: nat
f5 = fib (S (S (S (S O))))

||| a test, expecting (S (S (S (S (S O)))))
f6: nat
f6 = fib (S (S (S (S (S O)))))
