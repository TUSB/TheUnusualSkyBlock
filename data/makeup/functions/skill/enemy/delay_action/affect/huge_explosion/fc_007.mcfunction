# frame 7 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:1.93d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.576 0.2
# Explosion--02_Particle1
particle flash ^0.24 ^0.16 ^0.25 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^0.21 ^0.28 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.15 ^0.35 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.31 ^-0.2 ^0.09 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.33 ^0.13 ^-0.14 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.04 ^0.38 ^-0.02 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.33 ^-0.13 ^0.14 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.04 ^-0.38 ^0.02 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^-0.21 ^-0.28 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.15 ^-0.35 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.31 ^0.2 ^-0.09 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.24 ^-0.16 ^-0.25 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.15 ^0.01 ^0.35 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^0.22 ^0.31 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.08 ^0.03 ^0.37 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.07 ^0.35 ^0.15 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.17 ^0.32 ^0.13 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.33 ^-0.02 ^0.2 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.19 ^-0.21 ^0.26 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.34 ^0.17 ^0.06 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.38 ^-0.04 ^-0.03 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.22 ^0.3 ^-0.1 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.28 ^0.24 ^0.11 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^0.34 ^-0.07 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.19 ^-0.16 ^0.29 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.29 ^0.05 ^0.25 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^-0.34 ^0.07 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.02 ^-0.31 ^0.22 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.29 ^-0.05 ^-0.25 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.28 ^-0.24 ^-0.11 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.02 ^0.31 ^-0.22 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.19 ^0.16 ^-0.29 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.38 ^0.04 ^0.03 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.22 ^-0.3 ^0.1 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.07 ^-0.35 ^-0.15 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^0.08 ^-0.03 ^-0.37 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.19 ^0.21 ^-0.26 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.34 ^-0.17 ^-0.06 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.33 ^0.02 ^-0.2 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.17 ^-0.32 ^-0.13 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^-0.22 ^-0.31 0.049 0.049 0.049 0.0 3 force @a[distance=..64]
particle flash ^-0.15 ^-0.01 ^-0.35 0.049 0.049 0.049 0.0 3 force @a[distance=..64]