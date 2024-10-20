# frame 59 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:19.49d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.231 0.2
# Explosion--02_Particle1
particle flash ^11.18 ^-8.87 ^7.4 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^12.01 ^8.01 ^7.07 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^0.32 ^16.07 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-5.13 ^-13.29 ^7.43 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^3.78 ^-14.01 ^-6.9 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^14.38 ^-0.85 ^-7.13 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-3.78 ^14.01 ^6.9 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-14.38 ^0.85 ^7.13 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-12.01 ^-8.01 ^-7.07 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^-0.32 ^-16.07 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^5.13 ^13.29 ^-7.43 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-11.18 ^8.87 ^-7.4 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^6.54 ^-5.03 ^13.79 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^13.63 ^-0.51 ^8.5 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^7.03 ^4.89 ^13.6 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^15.51 ^4.21 ^-0.04 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^15.02 ^-5.71 ^0.16 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^3.55 ^-13.02 ^8.72 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-3.04 ^-7.63 ^13.81 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^8.79 ^-13.45 ^0.29 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-0.79 ^-16.05 ^0.31 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^10.67 ^-8.73 ^-8.24 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^10.07 ^12.52 ^-0.22 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^11.47 ^7.31 ^-8.56 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-2.25 ^8.42 ^13.5 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^4.83 ^12.94 ^8.21 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-11.47 ^-7.31 ^8.56 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-8.48 ^0.69 ^13.63 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-4.83 ^-12.94 ^-8.21 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-10.07 ^-12.52 ^0.22 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^8.48 ^-0.69 ^-13.63 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^2.25 ^-8.42 ^-13.5 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^0.79 ^16.05 ^-0.31 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-10.67 ^8.73 ^8.24 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-15.51 ^-4.21 ^0.04 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-7.03 ^-4.89 ^-13.6 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^3.04 ^7.63 ^-13.81 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-8.79 ^13.45 ^-0.29 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-3.55 ^13.02 ^-8.72 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-15.02 ^5.71 ^-0.16 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-13.63 ^0.51 ^-8.5 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
particle flash ^-6.54 ^5.03 ^-13.79 0.303 0.303 0.303 0.0 3 force @a[distance=..64]
