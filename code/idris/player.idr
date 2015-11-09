module player

import bool
import list
import nat
import relation

||| A record type that is equivalent to
||| (data player = MkPlayer String Nat Nat Nat bool)
||| but where we give names to fields.
||| A player has a name, average points, average rebounds, average assists,
||| and a boolean value indicating whether that player is a starter.

record Player where
    constructor MkPlayer
    name: String
    points: Nat
    rebounds: Nat
    assists: Nat
    starter: bool

-- An example value of type player
LBJ: Player
LBJ = MkPlayer "Lebron James" 25 6 7 true

-- Another example value of type player
Iggy: Player
Iggy = MkPlayer "Andre Igoudala" 8 3 3 false

-- A third example value of type player
Steph: Player
Steph = MkPlayer "Stephen Curry" 24 4 8 true

-- A fourth example value of type player
Love: Player
Love = MkPlayer "Kevin Love" 16 10 2 true

-- A fifth example value of type player
Delly: Player
Delly = MkPlayer "Matthew Dellavedova" 5 2 3 false

Players: list Player
Players =  LBJ :: Iggy :: Steph :: Love :: Delly :: nil

Names: list Player -> list String
Names l = map name(l)

Points: list Player -> list Nat
Points l = map points l

Rebounds: list Player -> list Nat
Rebounds l = map rebounds l

Assists: list Player -> list Nat
Assists l = map assists l

Starter: list Player -> list bool
Starter l = map starter l
