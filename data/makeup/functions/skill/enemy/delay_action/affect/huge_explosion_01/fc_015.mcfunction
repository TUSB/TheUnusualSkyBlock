# frame 15 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:3.5d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.676 0.2
# Explosion--02_Particle1
particle flash ^-0.4 ^-1.12 ^-1.34 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.52 ^-0.93 ^0.17 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.35 ^0.48 ^-1.07 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.43 ^0.53 ^-1.65 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.37 ^-0.84 ^-0.78 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^-1.75 ^0.35 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.37 ^0.84 ^0.78 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^1.75 ^-0.35 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.52 ^0.93 ^-0.17 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.35 ^-0.48 ^1.07 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.43 ^-0.53 ^1.65 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.4 ^1.12 ^1.34 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.03 ^-0.38 ^-1.41 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.13 ^-1.21 ^-0.69 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.69 ^-0.26 ^-0.53 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.8 ^-1.57 ^0.3 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.14 ^-1.69 ^-0.58 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.02 ^-0.35 ^-1.76 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.54 ^0.6 ^-1.6 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.57 ^-1.16 ^-1.24 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.06 ^-0.18 ^-1.43 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.9 ^-1.52 ^-0.26 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.15 ^-0.86 ^1.07 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^-1.34 ^1.17 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.6 ^0.78 ^-0.17 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.7 ^-0.05 ^0.56 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^1.34 ^-1.17 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.89 ^1.31 ^-0.83 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.7 ^0.05 ^-0.56 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.15 ^0.86 ^-1.07 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.89 ^-1.31 ^0.83 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.6 ^-0.78 ^0.17 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-1.06 ^0.18 ^1.43 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.9 ^1.52 ^0.26 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.8 ^1.57 ^-0.3 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.69 ^0.26 ^0.53 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.54 ^-0.6 ^1.6 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.57 ^1.16 ^1.24 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^-0.02 ^0.35 ^1.76 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^0.14 ^1.69 ^0.58 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.13 ^1.21 ^0.69 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
particle flash ^1.03 ^0.38 ^1.41 0.088 0.088 0.088 0.0 3 force @a[distance=..64]
