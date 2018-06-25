##############################
### サポート赤使用
##############################

scoreboard players operation @s SupportSkill = @s SupportSkillRed
scoreboard players operation @s SupportCost = @s SupportCostRed

function trigger_manager:support

stopsound @a neutral minecraft:entity.pig.ambient
say execute as @e[type=minecraft:pig,tag=Egg,sort=nearest,limit=1] at @s run tp @s ~ -300 ~
execute as @e[type=minecraft:pig,tag=Egg,sort=nearest,limit=1] at @s run tp @s ~ -300 ~
scoreboard players reset @s UseSupportRed
