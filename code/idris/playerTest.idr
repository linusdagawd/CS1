module listExample

import list
import player
import bool
import relation
import pair

listPlayer: list Player
listPlayer =  LBJ :: Iggy :: Steph :: Love :: Delly :: nil

mapName: list Player -> list String
mapName nil = nil
mapName (h :: t) = name h :: (mapName t)

mapPoints: list Player -> list Nat
mapPoints nil = nil
mapPoints (h :: t) = points h :: (mapPoints t)

mapRebounds: list Player -> list Nat
mapRebounds nil = nil
mapRebounds (h :: t) = rebounds h :: (mapRebounds t)

mapAssists: list Player -> list Nat
mapAssists nil = nil
mapAssists (h :: t) = assists h :: (mapAssists t)

mapStarter: list Player -> list bool
mapStarter nil = nil
mapStarter (h :: t) = starter h :: (mapStarter t)

--Query1 Tests
TotalStarterPoints: Nat
TotalStarterPoints = query plus 0 points starter Players

TotalStarterRebounds: Nat
TotalStarterRebounds = query plus 0 rebounds starter Players

StarterNames: String
StarterNames = query (++) " " name starter Players

--Query2 Tests
TotalStarterPoints': Nat
TotalStarterPoints' = query2 Players starter points plus 0

TotalStarterRebounds': Nat
TotalStarterRebounds' = query2 Players starter rebounds plus 0

StarterNames': String
StarterNames' = query2 Players starter name (++) ""

--Count_rel Test
count_starters: Nat
count_starters = count_rel Players starter

--Sum_rel Test
sum_starter_points: Nat
sum_starter_points = sum_rel Players starter points

--avg_rel Test
avg_starter_points: pair Nat Nat
avg_starter_points =  avg_rel Players starter points
