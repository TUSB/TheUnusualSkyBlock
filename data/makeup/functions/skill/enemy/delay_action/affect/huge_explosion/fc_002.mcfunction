# frame 2 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:1.51d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.513 0.2
# Explosion--02_Particle1
particle flash ^0.01 ^0.01 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.01 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^0.01 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^0.0 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.0 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^0.0 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.0 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^-0.0 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.01 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^-0.01 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.0 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.01 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^0.01 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^0.01 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^0.01 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.01 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^0.0 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^0.01 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^0.01 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^0.0 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.0 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^-0.0 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.0 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.0 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^0.01 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.01 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^0.0 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^0.01 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.01 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.0 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^-0.01 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^-0.01 ^-0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^0.0 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^0.0 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.01 ^-0.01 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^-0.01 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.01 ^-0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.0 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.01 ^-0.01 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^-0.0 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^0.0 ^-0.01 ^0.01 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
particle flash ^-0.0 ^-0.01 ^0.0 0.025 0.025 0.025 0.0 3 force @a[distance=..64]
