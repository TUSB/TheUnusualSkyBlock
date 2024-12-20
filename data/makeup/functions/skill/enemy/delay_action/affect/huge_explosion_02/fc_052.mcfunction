# frame 112 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:33.66d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.899 0.2
# Explosion--02_Particle1
particle flash ^23.78 ^13.59 ^8.65 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^20.09 ^4.71 ^-19.98 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^3.22 ^27.15 ^-8.83 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-3.41 ^20.46 ^19.87 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^9.38 ^-6.1 ^26.46 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^23.9 ^-15.83 ^1.83 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-9.38 ^6.1 ^-26.46 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-23.9 ^15.83 ^-1.83 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-20.09 ^-4.71 ^19.98 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-3.22 ^-27.15 ^8.83 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^3.41 ^-20.46 ^-19.87 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-23.78 ^-13.59 ^-8.65 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^15.87 ^23.94 ^-0.11 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^25.79 ^10.76 ^-6.66 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^13.7 ^18.73 ^-16.94 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^25.86 ^-6.53 ^-10.67 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^28.03 ^-1.32 ^6.16 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^11.98 ^20.02 ^16.76 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-0.11 ^27.98 ^6.49 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^19.49 ^4.4 ^20.64 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^3.51 ^8.44 ^27.23 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^19.56 ^-12.89 ^16.63 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^13.81 ^-9.26 ^-23.43 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^16.05 ^-21.33 ^-10.61 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-3.62 ^19.54 ^-20.74 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^6.3 ^6.36 ^-27.3 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-16.05 ^21.33 ^10.61 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-12.16 ^25.26 ^-6.27 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-6.3 ^-6.36 ^27.3 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-13.81 ^9.26 ^23.43 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^12.16 ^-25.26 ^6.27 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^3.62 ^-19.54 ^20.74 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-3.51 ^-8.44 ^-27.23 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-19.56 ^12.89 ^-16.63 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-25.86 ^6.53 ^10.67 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-13.7 ^-18.73 ^16.94 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^0.11 ^-27.98 ^-6.49 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-19.49 ^-4.4 ^-20.64 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-11.98 ^-20.02 ^-16.76 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-28.03 ^1.32 ^-6.16 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-25.79 ^-10.76 ^6.66 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
particle flash ^-15.87 ^-23.94 ^0.11 0.561 0.561 0.561 0.0 3 force @a[distance=..64]
