# frame 87 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:28.99d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.584 0.2
# Explosion--02_Particle1
particle flash ^7.19 ^-21.91 ^8.43 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-12.23 ^-8.87 ^19.36 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-15.09 ^-18.9 ^-4.26 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^7.35 ^-16.35 ^-16.78 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^24.08 ^-4.75 ^-0.9 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^11.98 ^-0.12 ^21.44 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-24.08 ^4.75 ^0.9 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-11.98 ^0.12 ^-21.44 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^12.23 ^8.87 ^-19.36 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^15.09 ^18.9 ^4.26 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-7.35 ^16.35 ^16.78 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-7.19 ^21.91 ^-8.43 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-4.64 ^-23.99 ^2.46 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-2.96 ^-18.09 ^16.34 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-16.06 ^-16.32 ^8.88 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-0.14 ^-5.29 ^23.98 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^11.27 ^-12.95 ^17.56 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^8.55 ^-22.49 ^-4.91 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-4.55 ^-20.72 ^-12.36 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^18.38 ^-15.67 ^4.43 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^18.47 ^-12.41 ^-10.39 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^21.19 ^-2.87 ^12.07 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-11.5 ^4.4 ^21.24 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^2.72 ^9.54 ^22.46 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-23.02 ^-8.32 ^-1.97 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-21.34 ^-2.42 ^11.91 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-2.72 ^-9.54 ^-22.46 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-15.91 ^-11.04 ^-15.1 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^21.34 ^2.42 ^-11.91 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^11.5 ^-4.4 ^-21.24 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^15.91 ^11.04 ^15.1 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^23.02 ^8.32 ^1.97 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-18.47 ^12.41 ^10.39 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-21.19 ^2.87 ^-12.07 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^0.14 ^5.29 ^-23.98 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^16.06 ^16.32 ^-8.88 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^4.55 ^20.72 ^12.36 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-18.38 ^15.67 ^-4.43 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-8.55 ^22.49 ^4.91 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^-11.27 ^12.95 ^-17.56 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^2.96 ^18.09 ^-16.34 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
particle flash ^4.64 ^23.99 ^-2.46 0.439 0.439 0.439 0.0 3 force @a[distance=..64]
