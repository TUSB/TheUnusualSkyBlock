# frame 77 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:25.97d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.458 0.2
# Explosion--02_Particle1
particle flash ^5.4 ^-18.63 ^10.08 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-15.68 ^-9.64 ^11.79 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-8.51 ^-18.38 ^-8.22 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^13.76 ^-13.24 ^-10.64 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^20.35 ^-1.31 ^7.88 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^2.15 ^0.91 ^21.73 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-20.35 ^1.31 ^-7.88 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-2.15 ^-0.91 ^-21.73 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^15.68 ^9.64 ^-11.79 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^8.51 ^18.38 ^8.22 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-13.76 ^13.24 ^10.64 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-5.4 ^18.63 ^-10.08 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-1.83 ^-21.75 ^1.09 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-6.05 ^-16.61 ^12.85 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-14.22 ^-16.47 ^2.1 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-7.96 ^-5.13 ^19.7 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^4.43 ^-10.41 ^18.7 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^11.26 ^-18.73 ^-0.33 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^3.09 ^-18.58 ^-11.08 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^15.13 ^-11.72 ^10.55 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^20.05 ^-8.55 ^-1.62 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^13.22 ^-0.24 ^17.4 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-17.31 ^2.12 ^13.18 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-6.83 ^8.32 ^19.03 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-16.96 ^-10.03 ^-9.46 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-21.18 ^-4.89 ^2.3 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^6.83 ^-8.32 ^-19.03 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-6.26 ^-11.34 ^-17.61 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^21.18 ^4.89 ^-2.3 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^17.31 ^-2.12 ^-13.18 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^6.26 ^11.34 ^17.61 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^16.96 ^10.03 ^9.46 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-20.05 ^8.55 ^1.62 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-13.22 ^0.24 ^-17.4 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^7.96 ^5.13 ^-19.7 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^14.22 ^16.47 ^-2.1 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-3.09 ^18.58 ^11.08 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-15.13 ^11.72 ^-10.55 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-11.26 ^18.73 ^0.33 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^-4.43 ^10.41 ^-18.7 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^6.05 ^16.61 ^-12.85 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
particle flash ^1.83 ^21.75 ^-1.09 0.39 0.39 0.39 0.0 3 force @a[distance=..64]
