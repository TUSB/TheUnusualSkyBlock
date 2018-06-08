##############################
### スノーゴーレム雪玉ヒット
##############################

scoreboard players add @s Damage 2000
execute as @a at @s run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 0.5 2
#particle minecraft:nautilus ~ ~1 ~ 0.5 1 0.5 0 100 force
particle minecraft:item_snowball ~ ~1 ~ 0.5 1 0.5 0 30 force
