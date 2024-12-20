# frame 21 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:5.1899999999999995d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.752 0.2
# Explosion--02_Particle1
particle flash ^-1.78 ^-0.6 ^-2.71 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^-3.13 ^-1.03 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-2.85 ^-1.59 ^0.44 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-2.75 ^1.78 ^-0.37 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^2.32 ^-2.34 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.68 ^-0.71 ^-2.74 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^-2.32 ^2.34 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.68 ^0.71 ^2.74 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^3.13 ^1.03 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^2.85 ^1.59 ^-0.44 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^2.75 ^-1.78 ^0.37 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.78 ^0.6 ^2.71 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-2.73 ^-1.28 ^-1.33 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.12 ^-2.19 ^-2.19 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.75 ^-2.77 ^-0.35 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^0.92 ^-2.26 ^-2.22 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-0.06 ^-0.77 ^-3.2 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-2.66 ^0.69 ^-1.81 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-3.29 ^0.11 ^0.04 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.02 ^1.01 ^-2.97 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.59 ^2.41 ^-1.6 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.02 ^0.94 ^-2.99 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.55 ^-2.88 ^-0.38 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^2.6 ^-1.46 ^-1.39 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.71 ^-2.3 ^1.63 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-0.1 ^-3.2 ^0.77 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-2.6 ^1.46 ^1.39 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-2.66 ^-0.51 ^1.87 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^0.1 ^3.2 ^-0.77 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.55 ^2.88 ^0.38 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^2.66 ^0.51 ^-1.87 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.71 ^2.3 ^-1.63 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.59 ^-2.41 ^1.6 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-1.02 ^-0.94 ^2.99 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^-0.92 ^2.26 ^2.22 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.75 ^2.77 ^0.35 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^3.29 ^-0.11 ^-0.04 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.02 ^-1.01 ^2.97 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^2.66 ^-0.69 ^1.81 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^0.06 ^0.77 ^3.2 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^1.12 ^2.19 ^2.19 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
particle flash ^2.73 ^1.28 ^1.33 0.117 0.117 0.117 0.0 3 force @a[distance=..64]
