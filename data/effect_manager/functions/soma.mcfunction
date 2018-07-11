##############################
### ソーマ
##############################

effect give @s minecraft:instant_health 1 49
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"体力","color":"white"},"が全回復した！"]

scoreboard players operation @s MP > @s MPMax
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"魔力","color":"white"},"が全回復した！"]

scoreboard players operation @s ResistEffects > $100 Const
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"免疫力","color":"white"},"が上がった！"]
