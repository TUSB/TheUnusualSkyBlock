# frame 83 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:27.84d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.534 0.2
# Explosion--02_Particle1
particle flash ^-22.24 ^-1.08 ^-7.6 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-12.16 ^-19.32 ^5.73 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-16.82 ^2.59 ^16.26 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-11.98 ^20.25 ^-0.38 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-4.34 ^9.26 ^-21.19 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-4.44 ^-15.19 ^-17.41 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^4.34 ^-9.26 ^21.19 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^4.44 ^15.19 ^17.41 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^12.16 ^19.32 ^-5.73 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^16.82 ^-2.59 ^-16.26 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^11.98 ^-20.25 ^0.38 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^22.24 ^1.08 ^7.6 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-22.96 ^0.89 ^5.09 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-20.22 ^-11.99 ^-1.1 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-17.03 ^-9.83 ^12.92 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-9.76 ^-20.28 ^-6.87 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-15.69 ^-9.56 ^-14.71 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-20.12 ^11.27 ^-4.7 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-16.93 ^13.42 ^9.33 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-15.62 ^4.81 ^-16.93 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-9.59 ^17.35 ^-12.68 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-5.16 ^-3.49 ^-22.69 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-0.1 ^-23.26 ^3.59 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^4.43 ^-20.83 ^-10.01 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-7.34 ^-3.92 ^22.01 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-4.6 ^-16.8 ^15.83 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-4.43 ^20.83 ^10.01 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^-7.27 ^10.45 ^19.79 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^4.6 ^16.8 ^-15.83 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^0.1 ^23.26 ^-3.59 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^7.27 ^-10.45 ^-19.79 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^7.34 ^3.92 ^-22.01 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^9.59 ^-17.35 ^12.68 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^5.16 ^3.49 ^22.69 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^9.76 ^20.28 ^6.87 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^17.03 ^9.83 ^-12.92 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^16.93 ^-13.42 ^-9.33 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^15.62 ^-4.81 ^16.93 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^20.12 ^-11.27 ^4.7 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^15.69 ^9.56 ^14.71 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^20.22 ^11.99 ^1.1 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
particle flash ^22.96 ^-0.89 ^-5.09 0.42 0.42 0.42 0.0 3 force @a[distance=..64]
