# frame 69 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:23.22d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.357 0.2
# Explosion--02_Particle1
particle flash ^10.16 ^-12.27 ^-11.08 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^19.19 ^-0.41 ^2.85 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^7.13 ^-15.76 ^8.79 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-8.5 ^-16.91 ^-4.27 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-6.11 ^-2.28 ^-18.28 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^11.0 ^7.93 ^-13.88 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^6.11 ^2.28 ^18.28 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-11.0 ^-7.93 ^13.88 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-19.19 ^0.41 ^-2.85 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-7.13 ^15.76 ^-8.79 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^8.5 ^16.91 ^4.27 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-10.16 ^12.27 ^11.08 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^10.17 ^-16.47 ^-1.35 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^17.25 ^-7.45 ^-4.84 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^15.47 ^-9.5 ^6.84 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^17.75 ^4.42 ^-6.48 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^12.44 ^-2.55 ^-14.67 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^0.98 ^-17.15 ^-9.02 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-0.8 ^-19.2 ^2.66 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^2.38 ^-8.55 ^-17.26 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-8.59 ^-11.28 ^-13.25 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^2.88 ^3.32 ^-18.9 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^16.28 ^9.7 ^4.18 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^11.46 ^14.6 ^-5.65 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^7.78 ^-7.93 ^15.91 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^14.87 ^1.1 ^12.42 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-11.46 ^-14.6 ^5.65 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-2.27 ^-13.92 ^13.32 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-14.87 ^-1.1 ^-12.42 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-16.28 ^-9.7 ^-4.18 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^2.27 ^13.92 ^-13.32 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-7.78 ^7.93 ^-15.91 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^8.59 ^11.28 ^13.25 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-2.88 ^-3.32 ^18.9 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-17.75 ^-4.42 ^6.48 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-15.47 ^9.5 ^-6.84 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^0.8 ^19.2 ^-2.66 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-2.38 ^8.55 ^17.26 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-0.98 ^17.15 ^9.02 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-12.44 ^2.55 ^14.67 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-17.25 ^7.45 ^4.84 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
particle flash ^-10.17 ^16.47 ^1.35 0.351 0.351 0.351 0.0 3 force @a[distance=..64]
