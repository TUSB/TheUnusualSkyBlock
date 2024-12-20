# frame 37 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:10.84d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.954 0.2
# Explosion--02_Particle1
particle flash ^4.72 ^-6.09 ^3.21 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^2.74 ^-5.8 ^-5.34 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^8.13 ^0.2 ^-1.88 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^5.2 ^2.16 ^6.16 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-2.0 ^-2.63 ^7.67 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-3.52 ^-7.55 ^0.56 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^2.0 ^2.63 ^-7.67 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^3.52 ^7.55 ^-0.56 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-2.74 ^5.8 ^5.34 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-8.13 ^-0.2 ^1.88 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-5.2 ^-2.16 ^-6.16 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-4.72 ^6.09 ^-3.21 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^7.56 ^-3.46 ^0.78 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^4.39 ^-6.99 ^-1.25 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^6.39 ^-3.29 ^-4.24 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-0.46 ^-7.85 ^-2.81 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^0.71 ^-8.02 ^2.21 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^5.84 ^-2.31 ^5.5 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^7.84 ^1.39 ^2.52 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^1.6 ^-5.13 ^6.39 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^1.89 ^-0.28 ^8.13 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-3.24 ^-5.98 ^4.84 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-1.45 ^-4.68 ^-6.76 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-5.13 ^-5.71 ^-3.29 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^5.95 ^1.66 ^-5.61 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^2.78 ^-1.87 ^-7.65 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^5.13 ^5.71 ^3.29 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^6.85 ^4.56 ^-1.43 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-2.78 ^1.87 ^7.65 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^1.45 ^4.68 ^6.76 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-6.85 ^-4.56 ^1.43 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-5.95 ^-1.66 ^5.61 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-1.89 ^0.28 ^-8.13 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^3.24 ^5.98 ^-4.84 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^0.46 ^7.85 ^2.81 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-6.39 ^3.29 ^4.24 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-7.84 ^-1.39 ^-2.52 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-1.6 ^5.13 ^-6.39 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-5.84 ^2.31 ^-5.5 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-0.71 ^8.02 ^-2.21 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-4.39 ^6.99 ^1.25 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
particle flash ^-7.56 ^3.46 ^-0.78 0.195 0.195 0.195 0.0 3 force @a[distance=..64]
