##############################
### スノーゴーレム雪玉ヒット
##############################

scoreboard players operation @s Damage > @s SkillAttribute
###---演出---Start
execute as @a at @s run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 0.5 2
particle minecraft:item_snowball ~ ~1 ~ 0.5 1 0.5 0 30 force @a[tag=ShowParticles]
###---演出---End
