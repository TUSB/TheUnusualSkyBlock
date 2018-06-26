##############################
### サポート赤使用
##############################

scoreboard players operation @s SupportSkill = @s SupportSkillRed
scoreboard players operation @s SupportCost = @s SupportCostRed

function skill_manager:practice/support

stopsound @a neutral minecraft:entity.pig.ambient
#execute as @e[type=minecraft:pig,tag=Egg,sort=nearest,limit=1] at @s run tp @s ~ -300 ~
scoreboard players reset @s UseSupportRed
