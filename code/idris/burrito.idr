module burrito
import list

data burrito = Chicken | Steak | Barbacoa | Carnitas | Sofritas

||| a record of this type represents a type of burrito and the
||| nutritional value associated with it for
||| calories, fat, carbs, and protein, respectively.

data burritoRow = mkBurrito burrito Nat Nat Nat Nat


chicken: burritoRow
chicken = mkBurrito Chicken 190 7 1 32

steak: burritoRow
steak = mkBurrito Steak 190 7 2 30

barbacoa: burritoRow
barbacoa = mkBurrito Barbacoa 170 7 2 24

carnitas: burritoRow
carnitas = mkBurrito Carnitas 190 8 1 27

sofritas: burritoRow
sofritas = mkBurrito Sofritas 145 10 9 8

listBurrito: list burritoRow
listBurrito = cons chicken (cons steak (cons barbacoa (cons carnitas (cons sofritas nil))))
