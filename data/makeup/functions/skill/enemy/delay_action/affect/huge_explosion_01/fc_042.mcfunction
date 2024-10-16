# frame 42 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:12.79d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.017 0.2
# Explosion--02_Particle1
particle flash ^-0.12 ^-8.74 ^5.04 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-7.56 ^-6.33 ^-2.13 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^2.39 ^-8.27 ^-5.26 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^8.96 ^-4.18 ^1.99 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^3.08 ^0.28 ^9.6 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-7.13 ^-1.04 ^7.06 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-3.08 ^-0.28 ^-9.6 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^7.13 ^1.04 ^-7.06 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^7.56 ^6.33 ^2.13 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-2.39 ^8.27 ^5.26 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-8.96 ^4.18 ^-1.99 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^8.74 ^-5.04 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^1.33 ^-10.0 ^-0.13 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-4.52 ^-8.86 ^1.71 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-3.04 ^-8.58 ^-4.34 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-8.64 ^-4.33 ^2.89 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-4.26 ^-5.75 ^7.11 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^5.2 ^-7.6 ^4.13 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^6.67 ^-7.32 ^-1.92 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^1.74 ^-4.97 ^8.6 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^7.08 ^-2.29 ^6.82 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-2.39 ^-0.45 ^9.79 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-9.71 ^-1.26 ^-2.42 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-9.46 ^1.85 ^2.98 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-0.41 ^-5.03 ^-8.74 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-6.25 ^-3.89 ^-6.9 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^9.46 ^-1.85 ^-2.98 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^5.6 ^-4.25 ^-7.24 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^6.25 ^3.89 ^6.9 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^9.71 ^1.26 ^2.42 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-5.6 ^4.25 ^7.24 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^0.41 ^5.03 ^8.74 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-7.08 ^2.29 ^-6.82 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^2.39 ^0.45 ^-9.79 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^8.64 ^4.33 ^-2.89 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^3.04 ^8.58 ^4.34 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-6.67 ^7.32 ^1.92 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-1.74 ^4.97 ^-8.6 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-5.2 ^7.6 ^-4.13 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^4.26 ^5.75 ^-7.11 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^4.52 ^8.86 ^-1.71 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
particle flash ^-1.33 ^10.0 ^0.13 0.22 0.22 0.22 0.0 3 force @a[distance=..64]
