# frame 101 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:32.2d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.761 0.2
# Explosion--02_Particle1
particle flash ^-6.66 ^-26.52 ^-2.13 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^5.99 ^-12.28 ^-23.78 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^20.76 ^-17.92 ^0.34 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^2.72 ^-15.19 ^22.67 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-23.19 ^-7.86 ^12.36 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-21.17 ^-6.06 ^-16.35 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^23.19 ^7.86 ^-12.36 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^21.17 ^6.06 ^16.35 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-5.99 ^12.28 ^23.78 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-20.76 ^17.92 ^-0.34 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-2.72 ^15.19 ^-22.67 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^6.66 ^26.52 ^2.13 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^8.29 ^-26.12 ^-1.05 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-0.39 ^-22.8 ^-15.23 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^15.72 ^-17.75 ^-13.78 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-8.92 ^-10.78 ^-23.59 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-16.35 ^-19.15 ^-10.86 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-2.31 ^-24.51 ^12.07 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^13.8 ^-19.46 ^13.53 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-17.54 ^-20.21 ^6.01 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-12.03 ^-13.54 ^20.59 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-26.07 ^-8.18 ^-2.35 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^1.92 ^1.71 ^-27.3 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-14.04 ^5.37 ^-22.94 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^25.83 ^-5.92 ^-7.06 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^17.15 ^-2.6 ^-21.24 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^14.04 ^-5.37 ^22.94 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^24.64 ^-6.97 ^9.81 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-17.15 ^2.6 ^21.24 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-1.92 ^-1.71 ^27.3 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-24.64 ^6.97 ^-9.81 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-25.83 ^5.92 ^7.06 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^12.03 ^13.54 ^-20.59 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^26.07 ^8.18 ^2.35 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^8.92 ^10.78 ^23.59 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-15.72 ^17.75 ^13.78 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-13.8 ^19.46 ^-13.53 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^17.54 ^20.21 ^-6.01 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^2.31 ^24.51 ^-12.07 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^16.35 ^19.15 ^10.86 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^0.39 ^22.8 ^15.23 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
particle flash ^-8.29 ^26.12 ^1.05 0.507 0.507 0.507 0.0 3 force @a[distance=..64]
