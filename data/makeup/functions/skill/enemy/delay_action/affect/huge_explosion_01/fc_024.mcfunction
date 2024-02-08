# frame 24 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:6.14d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.79 0.2
# Explosion--02_Particle1
particle flash ^3.06 ^0.76 ^2.7 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^3.77 ^0.68 ^-1.6 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^1.41 ^3.9 ^0.16 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-1.01 ^2.2 ^3.37 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-0.14 ^-2.07 ^3.59 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^2.81 ^-3.01 ^0.52 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^0.14 ^2.07 ^-3.59 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-2.81 ^3.01 ^-0.52 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-3.77 ^-0.68 ^1.6 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-1.41 ^-3.9 ^-0.16 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^1.01 ^-2.2 ^-3.37 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-3.06 ^-0.76 ^-2.7 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^2.62 ^2.74 ^1.68 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^4.01 ^0.85 ^0.65 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^3.04 ^2.69 ^-0.85 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^3.86 ^-1.37 ^-0.63 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^3.45 ^-1.32 ^1.89 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^1.2 ^1.74 ^3.57 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^0.24 ^3.59 ^2.07 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^1.71 ^-0.77 ^3.7 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-0.68 ^0.08 ^4.09 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^1.57 ^-2.99 ^2.42 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^2.81 ^-0.9 ^-2.92 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^2.24 ^-3.06 ^-1.67 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^0.91 ^3.51 ^-2.02 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^2.3 ^1.61 ^-3.05 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-2.24 ^3.06 ^1.67 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-0.82 ^4.06 ^-0.21 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-2.3 ^-1.61 ^3.05 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-2.81 ^0.9 ^2.92 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^0.82 ^-4.06 ^0.21 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-0.91 ^-3.51 ^2.02 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^0.68 ^-0.08 ^-4.09 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-1.57 ^2.99 ^-2.42 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-3.86 ^1.37 ^0.63 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-3.04 ^-2.69 ^0.85 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-0.24 ^-3.59 ^-2.07 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-1.71 ^0.77 ^-3.7 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-1.2 ^-1.74 ^-3.57 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-3.45 ^1.32 ^-1.89 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-4.01 ^-0.85 ^-0.65 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
particle flash ^-2.62 ^-2.74 ^-1.68 0.132 0.132 0.132 0.0 3 force @a[distance=..64]
