#モブの座標に即爆発クリーパーを召喚する
summon creeper ~ ~500 ~ {Tags:[Explosion],ignited:1b,Fuse:2s,Invulnerable:1b}
execute positioned ~ ~500 ~ run tp @e[type=creeper,tag=!Initialized,distance=..0.0001,limit=1] ~ ~-500 ~
execute store result entity @e[type=creeper,tag=!Initialized,distance=..0.0001,limit=1] ExplosionRadius byte 1 run data get storage mob_data: Call.Explosion
data modify entity @e[type=creeper,tag=!Initialized,distance=..0.0001,limit=1] CustomName set from entity @s CustomName
