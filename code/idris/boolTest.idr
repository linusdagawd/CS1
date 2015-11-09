module boolTest
import bool
import pair

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5:bool
b5 = not b1

b6:bool
b6 = not (not b5)

--#1 test cases
||| a test, expecting true
a1: bool
a1 = and true true

|||a test, expecting false
a2: bool
a2 = and true false

||| a test, expecting false
a3: bool
a3 = and false true

||| a test, expecting false
a4: bool
a4 = and false false


--#2 Test cases
||| a test, expecting false
o1: bool
o1 = or false false

||| a test, expecting true
o2: bool
o2 = or true false

||| a test, expecting true
o3: bool
o3 = or false true

||| a test, expecting true
o4: bool
o4 = or true true

--#3 test cases
||| a test, expecting false
n1: bool
n1 = nand true true

||| a test, expecting true
n2: bool
n2 = nand true false

|||a test, expecting true
n3: bool
n3 = nand false true

|||a test, expecting true
n4: bool
n4 = nand false false

--#4 test cases
||| a test, expecting false
x1: bool
x1 = xor true true

||| a test, expecting false
x2: bool
x2 = xor false false

||| a test, expecting true
x3: bool
x3 = xor true false

||| a test, expecting true
x4: bool
x4 = xor false true



--Exam Test cases

--Problem #5a (pand test cases)
and_t_t: bool
and_t_t = and true true
--expect true

and_t_f: bool
and_t_f = and true false
--expect false

and_f_t: bool
and_f_t= and false true
--expect false

and_f_f: bool
and_f_f = and false false
--expect false

--Problem #5b (por test cases)
or_t_t: bool
or_t_t = or true true
--expect true

or_t_f: bool
or_t_f = or true false
--expect true

or_f_t: bool
or_f_t= or false true
--expect true

or_f_f: bool
or_f_f = or false false
--expect false

--Problem #5c (pxor test cases)
xor_t_t: bool
xor_t_t = xor true true
--expect false

xor_t_f: bool
xor_t_f = xor true false
--expect true

xor_f_t:bool
xor_f_t = xor false true
--expect true

xor_f_f: bool
xor_f_f = xor false false
--expect false

--Problem #5d (pnand test cases)
nand_t_t: bool
nand_t_t = nand true true
--expect false

nand_t_f: bool
nand_t_f = nand true false
--expect true

nand_f_t: bool
nand_f_t = nand false true
--expect true

nand_f_f: bool
nand_f_f = nand false false
--expect true
