# frame 46 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:14.37d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.067 0.2
# Explosion--02_Particle1
particle flash ^7.67 ^-7.91 ^-3.32 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-3.93 ^-10.72 ^-1.36 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-0.89 ^-3.81 ^-10.81 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^8.12 ^3.48 ^-7.37 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^10.65 ^1.08 ^4.21 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^3.2 ^-7.7 ^7.92 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-10.65 ^-1.08 ^-4.21 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-3.2 ^7.7 ^-7.92 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^3.93 ^10.72 ^1.36 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^0.89 ^3.81 ^10.81 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-8.12 ^-3.48 ^7.37 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-7.67 ^7.91 ^3.32 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^3.98 ^-6.89 ^-8.3 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^2.2 ^-10.95 ^-2.75 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-2.84 ^-8.54 ^-7.16 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-0.43 ^-10.83 ^3.85 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^6.39 ^-9.17 ^2.71 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^9.28 ^-2.6 ^-6.28 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^4.25 ^-0.2 ^-10.69 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^10.76 ^-4.01 ^0.53 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^11.03 ^2.68 ^-1.86 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^8.14 ^-3.89 ^7.13 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-7.08 ^-8.35 ^3.53 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-2.89 ^-6.57 ^8.99 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-6.78 ^-2.87 ^-8.83 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-8.57 ^-6.94 ^-3.28 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^2.89 ^6.57 ^-8.99 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-2.41 ^2.28 ^-11.01 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^8.57 ^6.94 ^3.28 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^7.08 ^8.35 ^-3.53 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^2.41 ^-2.28 ^11.01 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^6.78 ^2.87 ^8.83 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-11.03 ^-2.68 ^1.86 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-8.14 ^3.89 ^-7.13 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^0.43 ^10.83 ^-3.85 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^2.84 ^8.54 ^7.16 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-4.25 ^0.2 ^10.69 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-10.76 ^4.01 ^-0.53 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-9.28 ^2.6 ^6.28 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-6.39 ^9.17 ^-2.71 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-2.2 ^10.95 ^2.75 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
particle flash ^-3.98 ^6.89 ^8.3 0.239 0.239 0.239 0.0 3 force @a[distance=..64]
