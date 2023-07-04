# frame 45 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:13.98d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.055 0.2
# Explosion--02_Particle1
particle flash ^7.74 ^8.0 ^-0.61 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^10.62 ^-3.28 ^0.8 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^6.05 ^0.38 ^-9.36 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-2.1 ^8.45 ^-6.96 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-2.56 ^9.79 ^4.68 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^5.3 ^2.54 ^9.47 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^2.56 ^-9.79 ^-4.68 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-5.3 ^-2.54 ^-9.47 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-10.62 ^3.28 ^-0.8 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-6.05 ^-0.38 ^9.36 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^2.1 ^-8.45 ^6.96 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-7.74 ^-8.0 ^0.61 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^8.11 ^4.92 ^-5.86 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^10.8 ^2.77 ^0.11 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^9.8 ^-1.7 ^-5.03 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^9.36 ^-0.44 ^6.03 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^7.67 ^6.19 ^5.21 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^3.32 ^9.67 ^-4.45 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^2.32 ^5.19 ^-9.59 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^3.05 ^10.45 ^2.39 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-2.74 ^10.72 ^-1.34 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^1.61 ^7.24 ^8.32 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^7.48 ^-6.9 ^4.56 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^4.35 ^-3.48 ^9.65 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^5.06 ^-5.53 ^-8.25 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^7.75 ^-7.68 ^-2.28 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-4.35 ^3.48 ^-9.65 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^0.44 ^-1.27 ^-11.07 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-7.75 ^7.68 ^2.28 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-7.48 ^6.9 ^-4.56 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-0.44 ^1.27 ^11.07 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-5.06 ^5.53 ^8.25 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^2.74 ^-10.72 ^1.34 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-1.61 ^-7.24 ^-8.32 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-9.36 ^0.44 ^-6.03 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-9.8 ^1.7 ^5.03 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-2.32 ^-5.19 ^9.59 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-3.05 ^-10.45 ^-2.39 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-3.32 ^-9.67 ^4.45 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-7.67 ^-6.19 ^-5.21 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-10.8 ^-2.77 ^-0.11 0.234 0.234 0.234 0.0 3 force @a[distance=..64]
particle flash ^-8.11 ^-4.92 ^5.86 0.234 0.234 0.234 0.0 3 force @a[distance=..64]