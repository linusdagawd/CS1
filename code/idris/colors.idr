module colors
import pair
import bool

%default total

data color = red | blue | green | magenta | cyan | yellow


complement: color -> color
complement red = cyan
complement cyan = red
complement blue = yellow
complement yellow = blue
complement green = magenta
complement magenta = green

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive c = not(additive c)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements (mkPair blue yellow) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan magenta) = blue
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair magenta cyan) = blue

