# frame 63 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:21.01d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.282 0.2
# Explosion--02_Particle1
particle flash ^-13.61 ^-5.88 ^9.17 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-9.14 ^11.89 ^8.88 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-15.83 ^3.87 ^-6.19 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-9.05 ^-13.13 ^-7.03 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^1.83 ^-15.63 ^7.51 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^1.77 ^-0.16 ^17.34 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-1.83 ^15.63 ^-7.51 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-1.77 ^0.16 ^-17.34 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^9.14 ^-11.89 ^-8.88 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^15.83 ^-3.87 ^6.19 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^9.05 ^13.13 ^7.03 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^13.61 ^5.88 ^-9.17 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-17.3 ^-1.18 ^1.76 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-13.37 ^3.53 ^10.61 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-14.68 ^9.27 ^1.58 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-4.33 ^6.9 ^15.41 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-6.96 ^-3.55 ^15.58 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-13.32 ^-11.18 ^1.26 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-14.62 ^-5.44 ^-7.77 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-6.92 ^-12.64 ^9.8 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-4.25 ^-16.9 ^0.28 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^2.11 ^-9.28 ^14.6 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^14.71 ^9.35 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^6.36 ^7.63 ^14.33 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-10.38 ^11.46 ^-8.05 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-6.45 ^16.17 ^0.81 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-6.36 ^-7.63 ^-14.33 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-10.34 ^2.37 ^-13.83 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^6.45 ^-16.17 ^-0.81 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^-14.71 ^-9.35 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^10.34 ^-2.37 ^13.83 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^10.38 ^-11.46 ^8.05 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^4.25 ^16.9 ^-0.28 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^-2.11 ^9.28 ^-14.6 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^4.33 ^-6.9 ^-15.41 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^14.68 ^-9.27 ^-1.58 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^14.62 ^5.44 ^7.77 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^6.92 ^12.64 ^-9.8 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^13.32 ^11.18 ^-1.26 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^6.96 ^3.55 ^-15.58 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^13.37 ^-3.53 ^-10.61 0.322 0.322 0.322 0.0 3 force @a[distance=..64]
particle flash ^17.3 ^1.18 ^-1.76 0.322 0.322 0.322 0.0 3 force @a[distance=..64]