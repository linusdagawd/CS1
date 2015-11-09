module list

import bool
import nat
import unit
import ite
import eq
import serialize
import option

infixr 7 ::,++

data list a = nil | (::) a (list a)


-- The functions
length: list a -> nat
length nil = O
length (n :: l) = S(length l)


||| append as an infix operator ++
(++): list a -> list a -> list a
(++) (nil) l2 = l2
(++) (h :: t) l2 = h :: (t++l2)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)



||| give a list and a predicate on elements
||| return the sublist of elements for which
||| the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h)
                        (h :: (filter f t))
                              (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

-- eql: a -> a -> bool
-- eql v1 v2 =



member: (eq a) => a -> list a -> bool
member v nil = false
member v (h :: t) = ite (eql v h)
                        true
                        (member v t)

eql_list: (eq a) => list a -> list a -> bool
eql_list nil nil = true
eql_list (h :: t) nil = false
eql_list (h1 :: t1) (h2 :: t2) = ite (eql h1 h2)
                                          (eql_list t1 t2)
                                          false

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = true
subset_elements (h1 :: t1) (h2 :: t2) =  ite (member h1 (h2 :: t2))
                                              (subset_elements (t1) (h2 :: t2))
                                              false

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h :: nil) = (toString h)
toStringList (h :: t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"


list_forall: (p: a -> bool) -> (l: list a) -> bool
list_forall p l = (list.foldr and true (map p l))

list_exists: (p: a -> bool) -> (l: list a) -> bool
list_exists p l = (list.foldr or false (map p l))
