# frame 26 / 120
### Explosion--00_Damage_and_Sound
data modify storage mob_data: Call set value {Name:"Damage",Player:{DamageType:[Global,Fire,Blast],DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:10,Ice:10,Light:20},Distance:{Max:6.82d}}
execute positioned ~ ~ ~ run function enemy:ai/call/call
playsound entity.dragon_fireball.explode hostile @a[distance=..64] ~ ~ ~ 0.7 0.815 0.2
# Explosion--02_Particle1
particle flash ^-4.64 ^-0.54 ^-0.87 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-2.89 ^3.33 ^1.76 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-1.94 ^3.0 ^-3.13 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-1.17 ^-1.81 ^-4.23 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-1.65 ^-4.45 ^-0.03 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-2.72 ^-1.28 ^3.68 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^1.65 ^4.45 ^0.03 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^2.72 ^1.28 ^-3.68 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^2.89 ^-3.33 ^-1.76 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^1.94 ^-3.0 ^3.13 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^1.17 ^1.81 ^4.23 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^4.64 ^0.54 ^0.87 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-3.86 ^1.45 ^-2.35 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-4.43 ^1.64 ^0.52 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-2.84 ^3.72 ^-0.8 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-3.3 ^1.21 ^3.2 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-4.32 ^-1.07 ^1.65 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-3.41 ^-1.38 ^-3.0 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-1.83 ^0.7 ^-4.33 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-3.7 ^-2.93 ^-0.53 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-1.66 ^-3.68 ^-2.5 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-2.57 ^-3.37 ^2.15 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-1.01 ^3.02 ^3.52 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-0.91 ^0.31 ^4.65 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-0.17 ^4.38 ^-1.82 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-0.73 ^4.57 ^1.05 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^0.91 ^-0.31 ^-4.65 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^0.46 ^2.52 ^-4.0 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^0.73 ^-4.57 ^-1.05 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^1.01 ^-3.02 ^-3.52 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^-0.46 ^-2.52 ^4.0 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^0.17 ^-4.38 ^1.82 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^1.66 ^3.68 ^2.5 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^2.57 ^3.37 ^-2.15 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^3.3 ^-1.21 ^-3.2 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^2.84 ^-3.72 ^0.8 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^1.83 ^-0.7 ^4.33 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^3.7 ^2.93 ^0.53 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^3.41 ^1.38 ^3.0 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^4.32 ^1.07 ^-1.65 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^4.43 ^-1.64 ^-0.52 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
particle flash ^3.86 ^-1.45 ^2.35 0.142 0.142 0.142 0.0 3 force @a[distance=..64]
