##############################
### バードストライク発動
##############################

###バードストライク反映
execute if score @s ModeSkill matches 31031 positioned ~ ~1.52 ~ run data merge entity @e[distance=..5,type=arrow,tag=!Initialized,sort=nearest,limit=1] {Tags:[BirdStrike,BirdStrike1]}
execute if score @s ModeSkill matches 31032 positioned ~ ~1.52 ~ run data merge entity @e[distance=..5,type=arrow,tag=!Initialized,sort=nearest,limit=1] {Tags:[BirdStrike,BirdStrike2]}
