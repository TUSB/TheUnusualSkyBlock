##############################
### バードストライク発動
##############################

###バードストライク反映
execute positioned ~ ~1.52 ~ run data merge entity @e[distance=..5,type=arrow,tag=!Initialized,limit=1] {Tags:[BirdStrike,Initializing]}
execute if score @s ModeSkill matches 31031 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 5000
execute if score @s ModeSkill matches 31032 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 8000
tag @e[tag=Initializing,limit=1] remove Initializing
