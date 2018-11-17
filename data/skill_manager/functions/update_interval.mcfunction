##############################
### インターバル更新
##############################

scoreboard players remove @s[scores={SkillInterval=1..}] SkillInterval 50
playsound minecraft:block.brewing_stand.brew master @s[scores={SkillInterval=..0}] ~ ~ ~ 1 2
scoreboard players reset @s[scores={SkillInterval=..0}] SkillInterval
