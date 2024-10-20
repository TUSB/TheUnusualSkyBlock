# frame 19 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:4.59d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.727 0.2
# Explosion--02_Particle1
particle flash ^1.52 ^0.89 ^-2.13 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.43 ^2.72 ^-0.16 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.55 ^0.89 ^0.59 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.09 ^-1.63 ^-0.79 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.32 ^-1.34 ^-2.39 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-1.34 ^1.34 ^-2.0 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.32 ^1.34 ^2.39 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^1.34 ^-1.34 ^2.0 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.43 ^-2.72 ^0.16 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.55 ^-0.89 ^-0.59 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.09 ^1.63 ^0.79 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-1.52 ^-0.89 ^2.13 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.39 ^1.04 ^-0.9 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^1.14 ^2.12 ^-1.34 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^1.75 ^2.12 ^0.25 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.54 ^2.39 ^-1.27 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.1 ^1.31 ^-2.43 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.12 ^-0.43 ^-1.71 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.72 ^-0.43 ^-0.12 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.71 ^-0.27 ^-2.65 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^1.04 ^-1.74 ^-1.87 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.98 ^0.0 ^-2.58 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.98 ^2.56 ^0.37 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.02 ^1.75 ^-0.71 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^1.68 ^1.31 ^1.75 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.44 ^2.39 ^1.31 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.02 ^-1.75 ^0.71 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^2.29 ^-0.27 ^1.52 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.44 ^-2.39 ^-1.31 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.98 ^-2.56 ^-0.37 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.29 ^0.27 ^-1.52 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-1.68 ^-1.31 ^-1.75 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-1.04 ^1.74 ^1.87 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.98 ^-0.0 ^2.58 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^0.54 ^-2.39 ^1.27 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-1.75 ^-2.12 ^-0.25 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.72 ^0.43 ^0.12 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.71 ^0.27 ^2.65 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.12 ^0.43 ^1.71 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-0.1 ^-1.31 ^2.43 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-1.14 ^-2.12 ^1.34 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
particle flash ^-2.39 ^-1.04 ^0.9 0.108 0.108 0.108 0.0 3 force @a[distance=..64]
