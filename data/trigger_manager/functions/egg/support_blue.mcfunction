##############################
### サポート青使用
##############################

scoreboard players operation @s SupportSkill = @s SupportSkillBlue
scoreboard players operation @s SupportCost = @s SupportCostBlue

function trigger_manager:support

stopsound @a hostile minecraft:entity.drowned.ambient
say execute as @e[type=minecraft:drowned,tag=Egg,sort=nearest,limit=1] at @s run tp @s ~ -300 ~
execute as @e[type=minecraft:drowned,tag=Egg,sort=nearest,limit=1] at @s run tp @s ~ -300 ~
scoreboard players reset @s UseSupportBlue
