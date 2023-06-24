# frame 108 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:33.25d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 1.849 0.2
# Explosion--02_Particle1
particle flash ^26.27 ^-9.78 ^4.34 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^20.01 ^8.96 ^-18.0 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^18.9 ^18.51 ^10.23 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^7.91 ^-3.56 ^27.0 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^2.22 ^-26.76 ^9.14 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^9.7 ^-19.02 ^-18.67 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-2.22 ^26.76 ^-9.14 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-9.7 ^19.02 ^18.67 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-20.01 ^-8.96 ^18.0 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-18.9 ^-18.51 ^-10.23 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-7.91 ^3.56 ^-27.0 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-26.27 ^9.78 ^-4.34 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^26.55 ^5.13 ^8.56 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^27.2 ^-0.49 ^-8.03 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^22.87 ^16.14 ^-4.57 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^17.46 ^-5.92 ^-21.56 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^21.14 ^-16.93 ^-8.42 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^20.09 ^-7.84 ^18.42 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^15.76 ^8.79 ^21.88 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^16.75 ^-21.48 ^7.92 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^5.96 ^-17.82 ^21.25 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^7.01 ^-26.91 ^-5.6 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^7.11 ^7.36 ^-26.45 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^1.05 ^-9.09 ^-26.85 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^9.8 ^26.61 ^0.64 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^10.45 ^20.99 ^-15.96 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-1.05 ^9.09 ^26.85 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^5.41 ^22.06 ^16.99 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-10.45 ^-20.99 ^15.96 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-7.11 ^-7.36 ^26.45 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-5.41 ^-22.06 ^-16.99 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-9.8 ^-26.61 ^-0.64 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-5.96 ^17.82 ^-21.25 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-7.01 ^26.91 ^5.6 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-17.46 ^5.92 ^21.56 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-22.87 ^-16.14 ^4.57 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-15.76 ^-8.79 ^-21.88 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-16.75 ^21.48 ^-7.92 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-20.09 ^7.84 ^-18.42 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-21.14 ^16.93 ^8.42 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-27.2 ^0.49 ^8.03 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
particle flash ^-26.55 ^-5.13 ^-8.56 0.542 0.542 0.542 0.0 3 force @a[distance=..64]
