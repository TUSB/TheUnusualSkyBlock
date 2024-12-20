# frame 74 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:24.97d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.42 0.2
# Explosion--02_Particle1
particle flash ^-3.87 ^-19.77 ^5.79 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^11.93 ^-14.84 ^-8.77 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^14.26 ^-9.1 ^12.38 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-5.51 ^-3.0 ^20.0 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-20.05 ^-4.97 ^3.56 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-9.28 ^-12.29 ^-14.22 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^20.05 ^4.97 ^-3.56 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^9.28 ^12.29 ^14.22 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-11.93 ^14.84 ^8.77 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-14.26 ^9.1 ^-12.38 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^5.51 ^3.0 ^-20.0 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^3.87 ^19.77 ^-5.79 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^6.11 ^-16.97 ^10.68 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^4.74 ^-20.35 ^-1.75 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^15.39 ^-14.07 ^2.12 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^1.56 ^-15.95 ^-13.52 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-7.73 ^-18.85 ^-4.96 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-5.51 ^-13.39 ^15.16 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^5.14 ^-7.12 ^19.04 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-14.06 ^-14.55 ^5.5 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-15.02 ^-4.69 ^13.85 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-17.24 ^-10.15 ^-6.27 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^10.25 ^-6.96 ^-16.91 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-2.22 ^-5.46 ^-20.12 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^20.17 ^-2.43 ^5.19 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^18.8 ^-5.8 ^-7.25 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^2.22 ^5.46 ^20.12 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^13.83 ^1.87 ^15.64 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-18.8 ^5.8 ^7.25 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-10.25 ^6.96 ^16.91 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-13.83 ^-1.87 ^-15.64 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-20.17 ^2.43 ^-5.19 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^15.02 ^4.69 ^-13.85 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^17.24 ^10.15 ^6.27 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-1.56 ^15.95 ^13.52 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-15.39 ^14.07 ^-2.12 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-5.14 ^7.12 ^-19.04 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^14.06 ^14.55 ^-5.5 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^5.51 ^13.39 ^-15.16 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^7.73 ^18.85 ^4.96 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-4.74 ^20.35 ^1.75 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
particle flash ^-6.11 ^16.97 ^-10.68 0.376 0.376 0.376 0.0 3 force @a[distance=..64]
