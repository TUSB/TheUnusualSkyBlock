# frame 53 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:17.15d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.155 0.2
# Explosion--02_Particle1
particle flash ^-13.08 ^4.78 ^-1.2 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-2.5 ^12.73 ^5.2 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-2.08 ^10.24 ^-9.28 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-6.87 ^-3.44 ^-11.68 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-10.24 ^-9.42 ^1.32 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-7.55 ^0.58 ^11.75 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^10.24 ^9.42 ^-1.32 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^7.55 ^-0.58 ^-11.75 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^2.5 ^-12.73 ^-5.2 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^2.08 ^-10.24 ^9.28 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^6.87 ^3.44 ^11.68 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^13.08 ^-4.78 ^1.2 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-8.91 ^8.83 ^-6.16 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-9.16 ^10.29 ^2.35 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-2.7 ^13.5 ^-2.4 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-5.91 ^7.82 ^9.96 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-12.12 ^3.15 ^6.2 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-11.72 ^0.79 ^-7.57 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-5.26 ^4.0 ^-12.32 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-13.71 ^-2.72 ^0.07 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-10.06 ^-7.56 ^-6.09 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-10.46 ^-5.19 ^7.68 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^2.57 ^9.51 ^9.92 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-0.4 ^2.36 ^13.77 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^4.8 ^11.56 ^-6.23 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^4.55 ^13.02 ^2.28 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^0.4 ^-2.36 ^-13.77 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^3.21 ^5.68 ^-12.36 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-4.55 ^-13.02 ^-2.28 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-2.57 ^-9.51 ^-9.92 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-3.21 ^-5.68 ^12.36 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^-4.8 ^-11.56 ^6.23 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^10.06 ^7.56 ^6.09 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^10.46 ^5.19 ^-7.68 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^5.91 ^-7.82 ^-9.96 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^2.7 ^-13.5 ^2.4 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^5.26 ^-4.0 ^12.32 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^13.71 ^2.72 ^-0.07 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^11.72 ^-0.79 ^7.57 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^12.12 ^-3.15 ^-6.2 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^9.16 ^-10.29 ^-2.35 0.273 0.273 0.273 0.0 3 force @a[distance=..64]
particle flash ^8.91 ^-8.83 ^6.16 0.273 0.273 0.273 0.0 3 force @a[distance=..64]