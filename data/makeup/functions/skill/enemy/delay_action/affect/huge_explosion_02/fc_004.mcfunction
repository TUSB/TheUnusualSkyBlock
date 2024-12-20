# frame 64 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:21.39d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.294 0.2
# Explosion--02_Particle1
particle flash ^13.27 ^-10.59 ^5.24 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^13.68 ^-1.73 ^-11.2 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^15.16 ^7.99 ^4.69 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^3.89 ^0.12 ^17.33 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-4.56 ^-14.46 ^9.27 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^1.5 ^-15.6 ^-8.37 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^4.56 ^14.46 ^-9.27 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-1.5 ^15.6 ^8.37 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-13.68 ^1.73 ^11.2 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-15.16 ^-7.99 ^-4.69 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-3.89 ^-0.12 ^-17.33 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-13.27 ^10.59 ^-5.24 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^16.71 ^-1.53 ^5.83 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^15.84 ^-7.24 ^-3.5 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^16.95 ^3.68 ^-3.83 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^8.92 ^-10.19 ^-11.5 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^8.68 ^-15.39 ^-1.84 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^10.09 ^-6.15 ^13.27 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^11.2 ^4.77 ^12.94 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^5.12 ^-14.72 ^8.53 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-0.39 ^-8.42 ^15.64 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-1.8 ^-17.67 ^0.53 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^5.76 ^-1.09 ^-16.77 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-1.41 ^-9.24 ^-15.11 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^11.59 ^13.19 ^-2.69 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^10.72 ^7.48 ^-12.03 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^1.41 ^9.24 ^15.11 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^8.03 ^13.87 ^7.67 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-10.72 ^-7.48 ^12.03 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-5.76 ^1.09 ^16.77 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-8.03 ^-13.87 ^-7.67 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-11.59 ^-13.19 ^2.69 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^0.39 ^8.42 ^-15.64 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^1.8 ^17.67 ^-0.53 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-8.92 ^10.19 ^11.5 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-16.95 ^-3.68 ^3.83 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-11.2 ^-4.77 ^-12.94 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-5.12 ^14.72 ^-8.53 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-10.09 ^6.15 ^-13.27 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-8.68 ^15.39 ^1.84 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-15.84 ^7.24 ^3.5 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
particle flash ^-16.71 ^1.53 ^-5.83 0.327 0.327 0.327 0.0 3 force @a[distance=..64]
