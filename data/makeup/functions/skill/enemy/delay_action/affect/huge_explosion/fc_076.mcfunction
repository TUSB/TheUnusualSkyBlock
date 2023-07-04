# frame 76 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:25.64d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.445 0.2
# Explosion--02_Particle1
particle flash ^6.24 ^12.04 ^16.77 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^19.55 ^-4.15 ^8.1 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^15.34 ^14.66 ^-3.83 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-6.21 ^20.65 ^-0.11 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-15.32 ^5.54 ^14.13 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^0.6 ^-9.79 ^19.2 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^15.32 ^-5.54 ^-14.13 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-0.6 ^9.79 ^-19.2 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-19.55 ^4.15 ^-8.1 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-15.34 ^-14.66 ^3.83 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^6.21 ^-20.65 ^0.11 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-6.24 ^-12.04 ^-16.77 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^12.68 ^15.69 ^7.6 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^15.16 ^4.64 ^14.62 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^20.51 ^6.18 ^2.51 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^11.84 ^-8.19 ^16.05 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^4.02 ^1.32 ^21.14 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^0.02 ^19.21 ^9.79 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^5.37 ^20.76 ^-2.32 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-5.34 ^10.33 ^18.16 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-12.66 ^15.39 ^8.24 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-8.65 ^-2.5 ^19.59 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^15.14 ^-14.58 ^4.83 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^4.0 ^-17.89 ^11.35 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^18.02 ^5.36 ^-10.56 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^20.5 ^-5.69 ^-3.54 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-4.0 ^17.89 ^-11.35 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^8.66 ^14.37 ^-13.54 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-20.5 ^5.69 ^3.54 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-15.14 ^14.58 ^-4.83 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-8.66 ^-14.37 ^13.54 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-18.02 ^-5.36 ^10.56 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^12.66 ^-15.39 ^-8.24 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^8.65 ^2.5 ^-19.59 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-11.84 ^8.19 ^-16.05 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-20.51 ^-6.18 ^-2.51 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-5.37 ^-20.76 ^2.32 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^5.34 ^-10.33 ^-18.16 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-0.02 ^-19.21 ^-9.79 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-4.02 ^-1.32 ^-21.14 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-15.16 ^-4.64 ^-14.62 0.386 0.386 0.386 0.0 3 force @a[distance=..64]
particle flash ^-12.68 ^-15.69 ^-7.6 0.386 0.386 0.386 0.0 3 force @a[distance=..64]