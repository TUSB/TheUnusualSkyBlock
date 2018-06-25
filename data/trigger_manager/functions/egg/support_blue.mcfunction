##############################
### サポート青使用
##############################

scoreboard players operation @s SupportSkill = @s SupportSkillBlue
scoreboard players operation @s SupportCost = @s SupportCostBlue

function trigger_manager:support

stopsound @a hostile minecraft:entity.drowned.ambient
execute as @e[type=minecraft:drowned,tag=Egg] run tp @s ~ -300 ~
scoreboard players reset @s UseSupportBlue

