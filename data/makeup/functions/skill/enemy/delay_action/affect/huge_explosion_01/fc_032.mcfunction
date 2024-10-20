# frame 32 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:8.96d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.891 0.2
# Explosion--02_Particle1
particle flash ^5.74 ^-1.37 ^-3.08 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^4.17 ^5.11 ^-0.93 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^5.49 ^0.09 ^3.76 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^2.78 ^-5.9 ^1.35 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-0.23 ^-4.58 ^-4.83 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^0.63 ^2.23 ^-6.24 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^0.23 ^4.58 ^4.83 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-0.63 ^-2.23 ^6.24 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-4.17 ^-5.11 ^0.93 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-5.49 ^-0.09 ^-3.76 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-2.78 ^5.9 ^-1.35 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-5.74 ^1.37 ^3.08 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^6.61 ^-0.75 ^0.4 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^5.83 ^2.2 ^-2.36 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^5.68 ^3.05 ^1.66 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^2.82 ^4.31 ^-4.22 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^3.75 ^0.51 ^-5.48 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^5.01 ^-4.27 ^-1.02 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^4.86 ^-3.42 ^3.01 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^3.24 ^-3.49 ^-4.65 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^1.5 ^-6.16 ^-2.05 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^0.24 ^-1.38 ^-6.51 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^0.82 ^6.47 ^-1.34 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-1.26 ^4.78 ^-4.47 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^3.36 ^2.74 ^5.05 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^2.59 ^5.69 ^2.29 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^1.26 ^-4.78 ^4.47 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^2.86 ^-1.26 ^5.88 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-2.59 ^-5.69 ^-2.29 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-0.82 ^-6.47 ^1.34 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-2.86 ^1.26 ^-5.88 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-3.36 ^-2.74 ^-5.05 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-1.5 ^6.16 ^2.05 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-0.24 ^1.38 ^6.51 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-2.82 ^-4.31 ^4.22 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-5.68 ^-3.05 ^-1.66 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-4.86 ^3.42 ^-3.01 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-3.24 ^3.49 ^4.65 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-5.01 ^4.27 ^1.02 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-3.75 ^-0.51 ^5.48 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-5.83 ^-2.2 ^2.36 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
particle flash ^-6.61 ^0.75 ^-0.4 0.171 0.171 0.171 0.0 3 force @a[distance=..64]
