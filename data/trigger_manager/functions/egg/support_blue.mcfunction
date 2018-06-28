##############################
### サポート青使用
##############################

scoreboard players operation @s SupportSkill = @s SupportSkillBlue
scoreboard players operation @s SupportCost = @s SupportCostBlue
scoreboard players operation @s SupportInterval = @s SupportIntBlue

function skill_manager:practice/support

stopsound @a hostile minecraft:entity.drowned.ambient
#execute as @e[type=minecraft:drowned,tag=Egg,sort=nearest,limit=1] at @s run tp @s ~ -300 ~
scoreboard players reset @s UseSupportBlue
