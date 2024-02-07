# frame 70 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:23.58d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.37 0.2
# Explosion--02_Particle1
particle flash ^-13.2 ^6.48 ^-13.14 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-2.54 ^-11.06 ^-16.13 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-16.91 ^-10.07 ^-1.21 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-16.07 ^8.84 ^7.26 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-1.18 ^19.54 ^-2.42 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^7.18 ^7.24 ^-16.88 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^1.18 ^-19.54 ^2.42 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-7.18 ^-7.24 ^16.88 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^2.54 ^11.06 ^16.13 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^16.91 ^10.07 ^1.21 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^16.07 ^-8.84 ^-7.26 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^13.2 ^-6.48 ^13.14 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-17.7 ^-2.11 ^-8.44 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-9.26 ^-2.69 ^-17.21 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-11.44 ^-12.42 ^-10.19 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^2.73 ^-2.24 ^-19.4 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-3.54 ^8.06 ^-17.65 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-17.2 ^9.0 ^-3.46 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-19.39 ^-0.73 ^3.56 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-8.45 ^15.29 ^-9.15 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-10.14 ^16.68 ^2.84 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^3.53 ^15.74 ^-11.35 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^7.95 ^-11.69 ^-13.75 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^13.67 ^-0.94 ^-14.19 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-9.25 ^-17.4 ^0.71 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-0.8 ^-17.98 ^-8.06 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-13.67 ^0.94 ^14.19 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-14.16 ^-10.18 ^9.21 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^0.8 ^17.98 ^8.06 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-7.95 ^11.69 ^13.75 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^14.16 ^10.18 ^-9.21 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^9.25 ^17.4 ^-0.71 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^10.14 ^-16.68 ^-2.84 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-3.53 ^-15.74 ^11.35 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^-2.73 ^2.24 ^19.4 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^11.44 ^12.42 ^10.19 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^19.39 ^0.73 ^-3.56 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^8.45 ^-15.29 ^9.15 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^17.2 ^-9.0 ^3.46 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^3.54 ^-8.06 ^17.65 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^9.26 ^2.69 ^17.21 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
particle flash ^17.7 ^2.11 ^8.44 0.356 0.356 0.356 0.0 3 force @a[distance=..64]
