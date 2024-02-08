# frame 68 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:22.86d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.345 0.2
# Explosion--02_Particle1
particle flash ^17.18 ^6.22 ^5.49 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^9.91 ^-11.46 ^11.6 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^15.1 ^-8.84 ^-7.6 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^10.04 ^9.84 ^-12.9 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^1.72 ^18.76 ^3.03 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^1.64 ^5.6 ^18.17 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-1.72 ^-18.76 ^-3.03 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-1.64 ^-5.6 ^-18.17 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-9.91 ^11.46 ^-11.6 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-15.1 ^8.84 ^7.6 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-10.04 ^-9.84 ^12.9 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-17.18 ^-6.22 ^-5.49 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^18.98 ^-1.54 ^-1.24 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^15.93 ^-3.08 ^10.05 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^14.7 ^-11.93 ^2.35 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^6.79 ^-3.45 ^17.5 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^11.07 ^6.94 ^13.91 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^16.0 ^9.44 ^-4.35 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^14.78 ^0.59 ^-12.05 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^11.11 ^14.68 ^5.01 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^6.92 ^16.81 ^-5.81 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^1.98 ^14.32 ^12.46 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-0.08 ^-12.52 ^14.4 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-4.94 ^-2.49 ^18.26 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^7.87 ^-16.22 ^-6.25 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^4.81 ^-17.76 ^5.04 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^4.94 ^2.49 ^-18.26 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^7.91 ^-8.49 ^-15.15 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-4.81 ^17.76 ^-5.04 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^0.08 ^12.52 ^-14.4 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-7.91 ^8.49 ^15.15 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-7.87 ^16.22 ^6.25 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-6.92 ^-16.81 ^5.81 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-1.98 ^-14.32 ^-12.46 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-6.79 ^3.45 ^-17.5 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-14.7 ^11.93 ^-2.35 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-14.78 ^-0.59 ^12.05 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-11.11 ^-14.68 ^-5.01 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-16.0 ^-9.44 ^4.35 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-11.07 ^-6.94 ^-13.91 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-15.93 ^3.08 ^-10.05 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
particle flash ^-18.98 ^1.54 ^1.24 0.347 0.347 0.347 0.0 3 force @a[distance=..64]
