# frame 13 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:3.0300000000000002d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.651 0.2
# Explosion--02_Particle1
particle flash ^0.38 ^1.08 ^0.74 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.72 ^0.24 ^1.14 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.63 ^-0.26 ^1.18 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^1.34 ^0.27 ^0.05 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.43 ^1.09 ^-0.69 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.84 ^1.08 ^-0.02 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.43 ^-1.09 ^0.69 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.84 ^-1.08 ^0.02 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.72 ^-0.24 ^-1.14 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.63 ^0.26 ^-1.18 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-1.34 ^-0.27 ^-0.05 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.38 ^-1.08 ^-0.74 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.59 ^0.48 ^1.13 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.2 ^0.78 ^1.1 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^-0.01 ^1.36 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.91 ^0.78 ^0.65 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.27 ^1.27 ^0.42 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^1.01 ^0.79 ^0.47 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^1.15 ^0.0 ^0.73 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.48 ^1.28 ^0.03 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^1.04 ^0.8 ^-0.37 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.24 ^1.28 ^-0.42 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-1.21 ^-0.01 ^0.64 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-1.28 ^0.48 ^-0.05 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.11 ^-0.8 ^1.1 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.68 ^-0.5 ^1.07 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^1.28 ^-0.48 ^0.05 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.86 ^-0.79 ^0.71 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.68 ^0.5 ^-1.07 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^1.21 ^0.01 ^-0.64 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.86 ^0.79 ^-0.71 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.11 ^0.8 ^-1.1 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-1.04 ^-0.8 ^0.37 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.24 ^-1.28 ^0.42 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.91 ^-0.78 ^-0.65 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^0.01 ^-1.36 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-1.15 ^-0.0 ^-0.73 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.48 ^-1.28 ^-0.03 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-1.01 ^-0.79 ^-0.47 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.27 ^-1.27 ^-0.42 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^0.2 ^-0.78 ^-1.1 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
particle flash ^-0.59 ^-0.48 ^-1.13 0.078 0.078 0.078 0.0 3 force @a[distance=..64]
