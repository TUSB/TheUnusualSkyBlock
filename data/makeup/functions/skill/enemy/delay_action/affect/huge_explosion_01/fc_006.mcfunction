# frame 6 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:1.8d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.563 0.2
# Explosion--02_Particle1
particle flash ^-0.12 ^-0.15 ^0.19 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.04 ^0.08 ^0.26 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.21 ^0.11 ^0.12 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.24 ^-0.11 ^-0.06 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.27 ^-0.04 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^-0.15 ^0.15 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^0.27 ^0.04 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^0.15 ^-0.15 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.04 ^-0.08 ^-0.26 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.21 ^-0.11 ^-0.12 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.24 ^0.11 ^0.06 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^0.15 ^-0.19 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.2 ^-0.02 ^0.19 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.05 ^-0.04 ^0.26 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.1 ^0.11 ^0.22 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^-0.04 ^0.24 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.03 ^-0.18 ^0.2 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.21 ^-0.15 ^0.08 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.27 ^0.0 ^0.04 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.08 ^-0.25 ^0.09 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.15 ^-0.22 ^-0.06 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.09 ^-0.25 ^0.07 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.16 ^0.11 ^0.19 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.24 ^-0.03 ^0.13 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^0.22 ^0.1 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.03 ^0.21 ^0.18 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.24 ^0.03 ^-0.13 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.22 ^0.15 ^-0.02 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.03 ^-0.21 ^-0.18 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.16 ^-0.11 ^-0.19 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.22 ^-0.15 ^0.02 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.12 ^-0.22 ^-0.1 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.15 ^0.22 ^0.06 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.09 ^0.25 ^-0.07 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.12 ^0.04 ^-0.24 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.1 ^-0.11 ^-0.22 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.27 ^-0.0 ^-0.04 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.08 ^0.25 ^-0.09 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.21 ^0.15 ^-0.08 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^-0.03 ^0.18 ^-0.2 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.05 ^0.04 ^-0.26 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
particle flash ^0.2 ^0.02 ^-0.19 0.044 0.044 0.044 0.0 3 force @a[distance=..64]
