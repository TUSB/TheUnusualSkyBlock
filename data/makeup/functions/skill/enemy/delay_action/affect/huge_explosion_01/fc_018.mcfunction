# frame 18 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:25,Ice:25,Light:60},Distance:{Max:4.3d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.714 0.2
# Explosion--02_Particle1
particle flash ^-1.59 ^1.78 ^0.77 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.63 ^2.37 ^-0.52 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.33 ^1.15 ^-1.78 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-2.44 ^-0.56 ^-0.11 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.16 ^-0.4 ^2.18 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.74 ^1.41 ^1.93 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.16 ^0.4 ^-2.18 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.74 ^-1.41 ^-1.93 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.63 ^-2.37 ^0.52 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.33 ^-1.15 ^1.78 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^2.44 ^0.56 ^0.11 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.59 ^-1.78 ^-0.77 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.72 ^1.72 ^-0.6 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.56 ^2.44 ^0.15 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.41 ^2.07 ^-1.35 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.81 ^2.22 ^0.83 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.5 ^1.87 ^1.59 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-2.37 ^0.72 ^0.38 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-2.22 ^0.35 ^-1.11 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.62 ^0.81 ^1.73 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-2.11 ^-0.56 ^1.22 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.25 ^0.59 ^2.42 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.8 ^1.72 ^-0.24 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.87 ^1.16 ^1.2 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.1 ^0.91 ^-2.33 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.05 ^1.63 ^-1.59 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.87 ^-1.16 ^-1.2 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.22 ^-0.15 ^-2.18 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.05 ^-1.63 ^1.59 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-1.8 ^-1.72 ^0.24 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.22 ^0.15 ^2.18 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.1 ^-0.91 ^2.33 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^2.11 ^0.56 ^-1.22 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.25 ^-0.59 ^-2.42 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^-0.81 ^-2.22 ^-0.83 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.41 ^-2.07 ^1.35 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^2.22 ^-0.35 ^1.11 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.62 ^-0.81 ^-1.73 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^2.37 ^-0.72 ^-0.38 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.5 ^-1.87 ^-1.59 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^0.56 ^-2.44 ^-0.15 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
particle flash ^1.72 ^-1.72 ^0.6 0.103 0.103 0.103 0.0 3 force @a[distance=..64]
