module Box

import unit

data Box = mkBox unit

b1: Box
b1 = (mkBox mkUnit)

b2: Box
b2 = (mkBox mkUnit)

unbox: Box -> unit
unbox (mkBox _) = mkUnit

