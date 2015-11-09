module color
import pair

data primary = red|yellow|blue

data mixed = orange|green|purple|dyellow|dred|dblue

mix: pair primary primary -> mixed
mix (mkPair red yellow) = orange
mix (mkPair red blue) = purple
mix (mkPair yellow blue) = green
mix (mkPair yellow red) = orange
mix (mkPair blue red) = purple
mix (mkPair blue yellow) = green
mix (mkPair red red) = dred
mix (mkPair blue blue) = dblue
mix (mkPair yellow yellow) = dyellow
