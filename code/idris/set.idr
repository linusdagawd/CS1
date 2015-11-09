module set

import list
import ite
import bool
import eq
import nat

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting point for building any set
new_set: set a
new_set = mkSet nil

||| return { given value } union given set
set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite.ite (member v l)
                            (mkSet l)
                            (mkSet (v :: l))

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = subset_elements l1 l2

instance (eq a) => eq (set a) where
  eql set1 set2  = eql_set (set1) (set2)
