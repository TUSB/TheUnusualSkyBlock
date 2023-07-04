# frame 75 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:25.31d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.433 0.2
# Explosion--02_Particle1
particle flash ^-16.87 ^-0.2 ^-12.94 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-7.38 ^-19.11 ^-5.7 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-18.51 ^-6.0 ^8.59 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-14.48 ^15.28 ^3.01 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-0.87 ^15.31 ^-14.73 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^3.51 ^-5.94 ^-20.11 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^0.87 ^-15.31 ^14.73 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-3.51 ^5.94 ^20.11 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^7.38 ^19.11 ^5.7 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^18.51 ^6.0 ^-8.59 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^14.48 ^-15.28 ^-3.01 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^16.87 ^0.2 ^12.94 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-20.79 ^-3.64 ^-2.56 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-14.26 ^-11.35 ^-10.96 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-15.22 ^-14.76 ^1.7 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-2.27 ^-14.73 ^-15.17 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-7.85 ^-3.61 ^-19.43 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-18.43 ^8.86 ^-5.84 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-19.39 ^5.46 ^6.82 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-10.43 ^8.88 ^-16.27 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-9.03 ^17.98 ^-6.89 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^1.55 ^5.51 ^-20.48 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^4.17 ^-20.21 ^-5.12 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^10.58 ^-12.47 ^-13.59 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-10.36 ^-12.53 ^13.71 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-3.83 ^-20.23 ^5.31 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-10.58 ^12.47 ^13.59 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-12.94 ^-0.03 ^16.87 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^3.83 ^20.23 ^-5.31 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-4.17 ^20.21 ^5.12 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^12.94 ^0.03 ^-16.87 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^10.36 ^12.53 ^-13.71 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^9.03 ^-17.98 ^6.89 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^-1.55 ^-5.51 ^20.48 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^2.27 ^14.73 ^15.17 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^15.22 ^14.76 ^-1.7 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^19.39 ^-5.46 ^-6.82 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^10.43 ^-8.88 ^16.27 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^18.43 ^-8.86 ^5.84 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^7.85 ^3.61 ^19.43 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^14.26 ^11.35 ^10.96 0.381 0.381 0.381 0.0 3 force @a[distance=..64]
particle flash ^20.79 ^3.64 ^2.56 0.381 0.381 0.381 0.0 3 force @a[distance=..64]