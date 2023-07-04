# frame 29 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:7.86d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.853 0.2
# Explosion--02_Particle1
particle flash ^3.54 ^3.59 ^-2.63 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-2.26 ^3.29 ^-4.05 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-0.59 ^5.52 ^1.24 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^4.08 ^2.34 ^3.19 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^5.3 ^-1.85 ^-0.89 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^1.38 ^-1.27 ^-5.37 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-5.3 ^1.85 ^0.89 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-1.38 ^1.27 ^5.37 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^2.26 ^-3.29 ^4.05 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^0.59 ^-5.52 ^-1.24 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-4.08 ^-2.34 ^-3.19 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-3.54 ^-3.59 ^2.63 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^1.73 ^5.35 ^-0.82 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^0.75 ^4.04 ^-3.93 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-1.68 ^5.17 ^-1.65 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-0.52 ^1.19 ^-5.54 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^2.89 ^1.37 ^-4.7 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^4.48 ^3.49 ^0.33 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^2.05 ^4.62 ^2.6 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^5.2 ^1.02 ^-2.07 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^5.51 ^0.29 ^1.35 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^3.93 ^-1.83 ^-3.68 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-3.73 ^0.55 ^-4.26 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-1.58 ^-2.12 ^-5.03 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-3.47 ^4.33 ^1.25 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-4.45 ^3.02 ^-1.86 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^1.58 ^2.12 ^5.03 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-1.16 ^3.99 ^3.88 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^4.45 ^-3.02 ^1.86 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^3.73 ^-0.55 ^4.26 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^1.16 ^-3.99 ^-3.88 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^3.47 ^-4.33 ^-1.25 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-5.51 ^-0.29 ^-1.35 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-3.93 ^1.83 ^3.68 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^0.52 ^-1.19 ^5.54 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^1.68 ^-5.17 ^1.65 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-2.05 ^-4.62 ^-2.6 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-5.2 ^-1.02 ^2.07 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-4.48 ^-3.49 ^-0.33 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-2.89 ^-1.37 ^4.7 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-0.75 ^-4.04 ^3.93 0.156 0.156 0.156 0.0 3 force @a[distance=..64]
particle flash ^-1.73 ^-5.35 ^0.82 0.156 0.156 0.156 0.0 3 force @a[distance=..64]