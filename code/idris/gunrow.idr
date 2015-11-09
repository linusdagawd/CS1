module gunrow
import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death
||| rates per 10,000,000 by gun for homicides, suicides,
||| unintentional, other deaths

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austrl: gunrow
austrl = mkGunrow Australia 11 62 5 8

austr: gunrow
austr = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 480 0 0 0

amer: gunrow
amer = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10m: gunrow -> Nat
homicidePer10m (mkGunrow c h s u o) = h

suicidePer10m: gunrow -> Nat
suicidePer10m (mkGunrow c h s u o) = s

unintentionalPer10m: gunrow -> Nat
unintentionalPer10m (mkGunrow c h s u o) = u

otherPer10m: gunrow -> Nat
otherPer10m (mkGunrow c h s u o) = o

listGunrow: list gunrow
listGunrow = cons argen (cons austrl (cons austr (cons hond (cons amer nil))))
