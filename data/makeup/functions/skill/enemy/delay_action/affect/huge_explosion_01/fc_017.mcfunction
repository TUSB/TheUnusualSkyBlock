# frame 17 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:4.029999999999999d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.702 0.2
# Explosion--02_Particle1
particle flash ^-0.91 ^-0.13 ^-2.06 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.03 ^1.85 ^-0.77 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.05 ^1.13 ^-1.65 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.12 ^-1.24 ^-1.52 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-0.92 ^-1.98 ^-0.57 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-2.25 ^-0.07 ^-0.1 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.92 ^1.98 ^0.57 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^2.25 ^0.07 ^0.1 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.03 ^-1.85 ^0.77 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.05 ^-1.13 ^1.65 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.12 ^1.24 ^1.52 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.91 ^0.13 ^2.06 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.08 ^0.59 ^-2.18 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.14 ^1.01 ^-1.66 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^1.76 ^-1.42 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.93 ^1.05 ^-0.51 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.86 ^-0.12 ^-1.27 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^-0.81 ^-2.11 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.28 ^-0.06 ^-1.86 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.08 ^-1.24 ^-1.55 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^-1.89 ^-1.23 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.87 ^-1.21 ^-0.4 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.27 ^1.82 ^0.44 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.98 ^0.69 ^0.83 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.16 ^1.83 ^-0.63 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-0.06 ^2.25 ^-0.12 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.98 ^-0.69 ^-0.83 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.94 ^0.71 ^-0.91 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^0.06 ^-2.25 ^0.12 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.27 ^-1.82 ^-0.44 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.94 ^-0.71 ^0.91 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.16 ^-1.83 ^0.63 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^1.89 ^1.23 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.87 ^1.21 ^0.4 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.93 ^-1.05 ^0.51 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-1.76 ^1.42 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-1.28 ^0.06 ^1.86 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.08 ^1.24 ^1.55 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^0.81 ^2.11 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.86 ^0.12 ^1.27 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^1.14 ^-1.01 ^1.66 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
particle flash ^-0.08 ^-0.59 ^2.18 0.098 0.098 0.098 0.0 3 force @a[distance=..64]
