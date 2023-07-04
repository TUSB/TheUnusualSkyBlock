# frame 79 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:26.61d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.483 0.2
# Explosion--02_Particle1
particle flash ^-0.74 ^-20.83 ^8.31 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-15.39 ^-13.76 ^-8.77 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^7.61 ^-16.38 ^-13.3 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^19.64 ^-9.23 ^5.69 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^4.07 ^-2.19 ^21.95 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-17.58 ^-4.99 ^13.02 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-4.07 ^2.19 ^-21.95 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^17.58 ^4.99 ^-13.02 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^15.39 ^13.76 ^8.77 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-7.61 ^16.38 ^13.3 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-19.64 ^9.23 ^-5.69 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^0.74 ^20.83 ^-8.31 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^4.04 ^-21.87 ^-2.93 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-9.48 ^-20.33 ^-0.27 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-4.58 ^-17.72 ^-12.97 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-19.38 ^-11.02 ^2.49 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-10.76 ^-15.18 ^12.53 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^11.11 ^-17.67 ^8.23 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^16.02 ^-15.06 ^-4.48 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^1.96 ^-13.53 ^17.79 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^13.94 ^-6.72 ^16.25 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-7.94 ^-4.22 ^20.55 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-20.59 ^-2.66 ^-8.5 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-21.87 ^2.49 ^4.31 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^2.08 ^-8.34 ^-20.72 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-11.44 ^-6.8 ^-18.06 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^21.87 ^-2.49 ^-4.31 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^14.8 ^-6.7 ^-15.47 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^11.44 ^6.8 ^18.06 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^20.59 ^2.66 ^8.5 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-14.8 ^6.7 ^15.47 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-2.08 ^8.34 ^20.72 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-13.94 ^6.72 ^-16.25 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^7.94 ^4.22 ^-20.55 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^19.38 ^11.02 ^-2.49 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^4.58 ^17.72 ^12.97 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-16.02 ^15.06 ^4.48 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-1.96 ^13.53 ^-17.79 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-11.11 ^17.67 ^-8.23 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^10.76 ^15.18 ^-12.53 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^9.48 ^20.33 ^0.27 0.4 0.4 0.4 0.0 3 force @a[distance=..64]
particle flash ^-4.04 ^21.87 ^2.93 0.4 0.4 0.4 0.0 3 force @a[distance=..64]