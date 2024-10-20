# frame 5 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:1.7d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.55 0.2
# Explosion--02_Particle1
particle flash ^0.09 ^0.15 ^-0.02 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.11 ^0.05 ^0.13 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.17 ^-0.02 ^-0.04 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^0.04 ^-0.17 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.09 ^0.13 ^-0.08 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^0.14 ^0.1 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.09 ^-0.13 ^0.08 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^-0.14 ^-0.1 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.11 ^-0.05 ^-0.13 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.17 ^0.02 ^0.04 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^-0.04 ^0.17 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.09 ^-0.15 ^0.02 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^0.08 ^-0.04 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^0.11 ^0.06 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.17 ^0.02 ^0.05 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.04 ^0.11 ^0.14 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.03 ^0.17 ^0.05 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.08 ^0.11 ^-0.11 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.13 ^0.01 ^-0.12 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^0.17 ^-0.06 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.02 ^0.1 ^-0.15 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.08 ^0.16 ^0.01 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.04 ^0.0 ^0.17 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.06 ^0.06 ^0.16 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.15 ^-0.09 ^0.03 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^-0.05 ^0.12 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.06 ^-0.06 ^-0.16 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.13 ^-0.09 ^-0.08 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^0.05 ^-0.12 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.04 ^-0.0 ^-0.17 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.13 ^0.09 ^0.08 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.15 ^0.09 ^-0.03 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.02 ^-0.1 ^0.15 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^0.08 ^-0.16 ^-0.01 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.04 ^-0.11 ^-0.14 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.17 ^-0.02 ^-0.05 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.13 ^-0.01 ^0.12 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^-0.17 ^0.06 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.08 ^-0.11 ^0.11 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.03 ^-0.17 ^-0.05 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^-0.11 ^-0.06 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^-0.08 ^0.04 0.039 0.039 0.039 0.0 3 force @a[distance=..64]
