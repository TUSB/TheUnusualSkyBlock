##############################
### サポート赤使用
##############################

scoreboard players operation @s SupportSkill = @s SupportSkillRed
scoreboard players operation @s SupportCost = @s SupportCostRed

function trigger_manager:support

stopsound @a neutral minecraft:entity.pig.ambient
execute as @e[type=pig,tag=Egg] at @s run tp @s ~ -300 ~
scoreboard players reset @s UseSupportRed
