# frame 51 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:16.36d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.13 0.2
# Explosion--02_Particle1
particle flash ^-3.99 ^12.11 ^3.68 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^7.73 ^10.16 ^-3.63 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-4.67 ^7.89 ^-9.6 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-13.09 ^2.2 ^-0.03 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-5.88 ^0.96 ^11.86 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^6.99 ^5.88 ^9.63 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^5.88 ^-0.96 ^-11.86 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-6.99 ^-5.88 ^-9.63 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-7.73 ^-10.16 ^3.63 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^4.67 ^-7.89 ^9.6 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^13.09 ^-2.2 ^0.03 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^3.99 ^-12.11 ^-3.68 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-5.09 ^11.75 ^-3.48 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^2.2 ^13.09 ^0.03 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^1.8 ^10.61 ^-7.77 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^8.65 ^9.42 ^3.53 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^1.76 ^10.57 ^7.83 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-10.04 ^8.41 ^2.15 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-10.44 ^5.93 ^-5.66 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-5.8 ^7.68 ^9.13 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-11.15 ^1.86 ^6.95 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^0.65 ^4.02 ^12.63 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^12.24 ^4.68 ^-2.11 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^11.8 ^2.16 ^5.68 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^0.71 ^4.07 ^-12.61 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^8.0 ^5.41 ^-9.1 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-11.8 ^-2.16 ^-5.68 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-6.85 ^1.18 ^-11.3 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-8.0 ^-5.41 ^9.1 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-12.24 ^-4.68 ^2.11 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^6.85 ^-1.18 ^11.3 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-0.71 ^-4.07 ^12.61 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^11.15 ^-1.86 ^-6.95 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-0.65 ^-4.02 ^-12.63 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-8.65 ^-9.42 ^-3.53 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-1.8 ^-10.61 ^7.77 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^10.44 ^-5.93 ^5.66 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^5.8 ^-7.68 ^-9.13 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^10.04 ^-8.41 ^-2.15 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-1.76 ^-10.57 ^-7.83 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^-2.2 ^-13.09 ^-0.03 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
particle flash ^5.09 ^-11.75 ^3.48 0.264 0.264 0.264 0.0 3 force @a[distance=..64]
