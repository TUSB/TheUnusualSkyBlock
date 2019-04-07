##############################
### ピクミンヒット判定
##############################

execute at @s unless block ~ ~ ~ minecraft:air run tag @s add Garbage
execute at @s if score @s ParabolicT matches 2.. if entity @e[dx=0,dy=0,dz=0,tag=!Pikmin,limit=1,distance=0.01..] run tag @s add Garbage
execute if entity @s[tag=Garbage] run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:7s}
