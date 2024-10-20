# frame 119 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:33.99d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.987 0.2
# Explosion--02_Particle1
particle flash ^-12.81 ^25.27 ^6.31 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^16.68 ^20.27 ^12.38 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^7.25 ^22.72 ^-16.54 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-20.11 ^9.39 ^-18.7 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-27.6 ^-1.3 ^8.89 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-4.86 ^5.43 ^28.1 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^27.6 ^1.3 ^-8.89 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^4.86 ^-5.43 ^-28.1 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-16.68 ^-20.27 ^-12.38 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-7.25 ^-22.72 ^16.54 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^20.11 ^-9.39 ^18.7 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^12.81 ^-25.27 ^-6.31 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-3.26 ^28.21 ^-6.01 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^2.28 ^26.77 ^10.99 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^14.07 ^25.27 ^-2.45 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^6.95 ^15.1 ^23.79 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-10.38 ^18.04 ^20.23 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-19.35 ^20.37 ^-7.28 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-7.56 ^18.87 ^-20.72 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-23.75 ^14.09 ^8.94 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-28.05 ^4.76 ^-5.77 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-19.08 ^2.43 ^21.74 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^21.63 ^6.4 ^18.27 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^8.97 ^-2.33 ^27.51 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^20.49 ^14.12 ^-14.95 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^26.03 ^12.68 ^2.05 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-8.97 ^2.33 ^-27.51 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^7.12 ^10.16 ^-26.24 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-26.03 ^-12.68 ^-2.05 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-21.63 ^-6.4 ^-18.27 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-7.12 ^-10.16 ^26.24 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-20.49 ^-14.12 ^14.95 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^28.05 ^-4.76 ^5.77 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^19.08 ^-2.43 ^-21.74 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-6.95 ^-15.1 ^-23.79 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-14.07 ^-25.27 ^2.45 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^7.56 ^-18.87 ^20.72 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^23.75 ^-14.09 ^-8.94 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^19.35 ^-20.37 ^7.28 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^10.38 ^-18.04 ^-20.23 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^-2.28 ^-26.77 ^-10.99 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
particle flash ^3.26 ^-28.21 ^6.01 0.595 0.595 0.595 0.0 3 force @a[distance=..64]
