# frame 90 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:29.79d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.622 0.2
# Explosion--02_Particle1
particle flash ^-10.52 ^21.61 ^7.8 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^13.06 ^13.46 ^16.94 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^10.61 ^21.38 ^-8.3 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-13.0 ^13.11 ^-17.25 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-25.15 ^0.08 ^2.46 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-9.04 ^0.29 ^23.59 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^25.15 ^-0.08 ^-2.46 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^9.04 ^-0.29 ^-23.59 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-13.06 ^-13.46 ^-16.94 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-10.61 ^-21.38 ^8.3 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^13.0 ^-13.11 ^17.25 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^10.52 ^-21.61 ^-7.8 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^25.27 ^-0.29 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^1.49 ^20.61 ^14.54 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^13.91 ^20.48 ^5.08 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^2.36 ^8.08 ^23.83 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-11.5 ^12.87 ^18.45 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-13.83 ^20.41 ^-5.55 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-1.41 ^20.27 ^-15.02 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-20.97 ^12.75 ^6.03 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-22.42 ^7.75 ^-8.69 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-20.1 ^0.22 ^15.31 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^15.32 ^0.2 ^20.1 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^2.33 ^-7.54 ^24.01 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^21.02 ^12.52 ^-6.33 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^22.46 ^7.86 ^8.51 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-2.33 ^7.54 ^-24.01 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^11.55 ^12.39 ^-18.75 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-22.46 ^-7.86 ^-8.51 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-15.32 ^-0.2 ^-20.1 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-11.55 ^-12.39 ^18.75 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-21.02 ^-12.52 ^6.33 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^22.42 ^-7.75 ^8.69 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^20.1 ^-0.22 ^-15.31 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-2.36 ^-8.08 ^-23.83 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-13.91 ^-20.48 ^-5.08 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^1.41 ^-20.27 ^15.02 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^20.97 ^-12.75 ^-6.03 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^13.83 ^-20.41 ^5.55 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^11.5 ^-12.87 ^-18.45 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-1.49 ^-20.61 ^-14.54 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^-25.27 ^0.29 0.454 0.454 0.454 0.0 3 force @a[distance=..64]
