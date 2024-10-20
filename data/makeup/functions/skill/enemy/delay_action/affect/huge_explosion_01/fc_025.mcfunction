# frame 25 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:6.48d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.803 0.2
# Explosion--02_Particle1
particle flash ^1.76 ^-4.01 ^-0.79 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.25 ^-3.5 ^1.57 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.09 ^-2.53 ^-3.0 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.04 ^-0.54 ^-3.91 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^4.44 ^-0.28 ^0.09 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^1.79 ^-2.11 ^3.48 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-4.44 ^0.28 ^-0.09 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-1.79 ^2.11 ^-3.48 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.25 ^3.5 ^-1.57 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.09 ^2.53 ^3.0 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.04 ^0.54 ^3.91 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-1.76 ^4.01 ^0.79 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-0.2 ^-3.84 ^-2.23 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-0.29 ^-4.41 ^0.46 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.55 ^-3.55 ^-0.84 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-0.27 ^-3.3 ^2.97 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.08 ^-3.59 ^1.58 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.23 ^-2.67 ^-2.76 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-0.03 ^-1.81 ^-4.06 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^3.64 ^-2.52 ^-0.41 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^3.81 ^-0.48 ^-2.25 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^3.66 ^-1.4 ^2.1 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.52 ^-1.74 ^3.23 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-0.15 ^-0.92 ^4.35 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-3.84 ^-1.32 ^-1.82 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-3.93 ^-1.89 ^0.87 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^0.15 ^0.92 ^-4.35 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.28 ^-0.25 ^-3.81 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^3.93 ^1.89 ^-0.87 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.52 ^1.74 ^-3.23 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.28 ^0.25 ^3.81 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^3.84 ^1.32 ^1.82 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-3.81 ^0.48 ^2.25 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-3.66 ^1.4 ^-2.1 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^0.27 ^3.3 ^-2.97 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^2.55 ^3.55 ^0.84 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^0.03 ^1.81 ^4.06 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-3.64 ^2.52 ^0.41 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.23 ^2.67 ^2.76 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^-2.08 ^3.59 ^-1.58 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^0.29 ^4.41 ^-0.46 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
particle flash ^0.2 ^3.84 ^2.23 0.137 0.137 0.137 0.0 3 force @a[distance=..64]
