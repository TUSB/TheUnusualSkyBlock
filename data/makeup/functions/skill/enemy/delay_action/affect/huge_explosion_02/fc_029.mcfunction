# frame 89 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:29.53d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.609 0.2
# Explosion--02_Particle1
particle flash ^-7.36 ^-16.94 ^-16.91 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^17.58 ^-15.63 ^-8.58 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-1.36 ^-23.75 ^7.8 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-22.97 ^-9.52 ^2.95 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-17.38 ^7.4 ^-16.43 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^7.68 ^3.63 ^-23.55 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^17.38 ^-7.4 ^16.43 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-7.68 ^-3.63 ^23.55 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-17.58 ^15.63 ^8.58 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^1.36 ^23.75 ^-7.8 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^22.97 ^9.52 ^-2.95 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^7.36 ^16.94 ^16.91 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-5.13 ^-23.91 ^-5.35 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^6.01 ^-19.14 ^-14.98 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^9.53 ^-23.15 ^-0.46 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^14.84 ^-7.05 ^-18.89 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^0.19 ^-7.82 ^-23.78 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-17.83 ^-15.55 ^-8.2 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-14.3 ^-19.56 ^6.32 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-14.54 ^-5.6 ^-19.59 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-23.72 ^-1.24 ^-7.92 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-5.71 ^6.48 ^-23.5 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^23.83 ^-3.59 ^-6.78 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^18.01 ^7.73 ^-15.58 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^9.42 ^-18.31 ^14.24 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^20.55 ^-13.54 ^4.61 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-18.01 ^-7.73 ^15.58 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-5.31 ^-16.09 ^18.43 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-20.55 ^13.54 ^-4.61 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-23.83 ^3.59 ^6.78 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^5.31 ^16.09 ^-18.43 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-9.42 ^18.31 ^-14.24 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^23.72 ^1.24 ^7.92 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^5.71 ^-6.48 ^23.5 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-14.84 ^7.05 ^18.89 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-9.53 ^23.15 ^0.46 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^14.3 ^19.56 ^-6.32 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^14.54 ^5.6 ^19.59 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^17.83 ^15.55 ^8.2 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-0.19 ^7.82 ^23.78 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^-6.01 ^19.14 ^14.98 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
particle flash ^5.13 ^23.91 ^5.35 0.449 0.449 0.449 0.0 3 force @a[distance=..64]
