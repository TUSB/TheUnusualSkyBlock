# frame 43 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:13.19d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.029 0.2
# Explosion--02_Particle1
particle flash ^-4.17 ^-8.84 ^3.67 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-1.95 ^-0.34 ^10.25 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-10.03 ^0.4 ^2.86 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-6.83 ^-4.87 ^-6.22 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^3.24 ^-8.88 ^-4.43 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^6.25 ^-6.08 ^5.74 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-3.24 ^8.88 ^4.43 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-6.25 ^6.08 ^-5.74 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^1.95 ^0.34 ^-10.25 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^10.03 ^-0.4 ^-2.86 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^6.83 ^4.87 ^6.22 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^4.17 ^8.84 ^-3.67 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-8.35 ^-4.96 ^3.84 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-3.6 ^-5.4 ^8.18 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-7.04 ^0.04 ^7.71 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^2.53 ^-3.77 ^9.4 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^1.22 ^-8.77 ^5.53 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-6.46 ^-8.06 ^-1.5 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-9.91 ^-2.63 ^-1.97 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-0.55 ^-10.42 ^-0.45 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-2.11 ^-8.09 ^-6.26 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^5.58 ^-8.79 ^0.77 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^2.87 ^2.67 ^9.68 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^7.69 ^-0.71 ^7.03 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-7.8 ^5.46 ^4.29 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-3.05 ^5.02 ^8.63 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-7.69 ^0.71 ^-7.03 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-9.57 ^3.81 ^-1.69 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^3.05 ^-5.02 ^-8.63 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-2.87 ^-2.67 ^-9.68 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^9.57 ^-3.81 ^1.69 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^7.8 ^-5.46 ^-4.29 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^2.11 ^8.09 ^6.26 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-5.58 ^8.79 ^-0.77 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-2.53 ^3.77 ^-9.4 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^7.04 ^-0.04 ^-7.71 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^9.91 ^2.63 ^1.97 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^0.55 ^10.42 ^0.45 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^6.46 ^8.06 ^1.5 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^-1.22 ^8.77 ^-5.53 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^3.6 ^5.4 ^-8.18 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
particle flash ^8.35 ^4.96 ^-3.84 0.225 0.225 0.225 0.0 3 force @a[distance=..64]
