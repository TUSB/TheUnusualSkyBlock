# frame 39 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:11.62d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.979 0.2
# Explosion--02_Particle1
particle flash ^2.53 ^-2.32 ^8.36 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^7.53 ^-4.96 ^0.71 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^7.29 ^4.18 ^3.32 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-1.45 ^6.11 ^6.51 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-6.63 ^-1.84 ^5.87 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-1.08 ^-8.68 ^2.29 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^6.63 ^1.84 ^-5.87 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^1.08 ^8.68 ^-2.29 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-7.53 ^4.96 ^-0.71 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-7.29 ^-4.18 ^-3.32 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^1.45 ^-6.11 ^-6.51 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-2.53 ^2.32 ^-8.36 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^5.78 ^1.09 ^6.87 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^5.91 ^-4.28 ^5.33 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^8.71 ^-0.46 ^2.37 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^3.79 ^-8.01 ^1.76 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^0.86 ^-6.47 ^6.26 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^0.64 ^2.22 ^8.74 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^3.43 ^6.05 ^5.78 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-2.41 ^-2.45 ^8.36 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-4.75 ^2.51 ^7.27 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-4.53 ^-6.18 ^4.79 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^5.28 ^-6.5 ^-3.4 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^0.22 ^-8.69 ^-2.48 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^8.18 ^3.54 ^-1.5 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^8.32 ^-1.83 ^-3.03 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-0.22 ^8.69 ^2.48 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^4.92 ^7.56 ^0.61 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-8.32 ^1.83 ^3.03 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-5.28 ^6.5 ^3.4 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-4.92 ^-7.56 ^-0.61 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-8.18 ^-3.54 ^1.5 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^4.75 ^-2.51 ^-7.27 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^4.53 ^6.18 ^-4.79 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-3.79 ^8.01 ^-1.76 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-8.71 ^0.46 ^-2.37 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-3.43 ^-6.05 ^-5.78 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^2.41 ^2.45 ^-8.36 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-0.64 ^-2.22 ^-8.74 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-0.86 ^6.47 ^-6.26 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-5.91 ^4.28 ^-5.33 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
particle flash ^-5.78 ^-1.09 ^-6.87 0.205 0.205 0.205 0.0 3 force @a[distance=..64]
