##############################
### ディア命中
##############################

###---演出---Start
particle minecraft:firework ~ ~1.5 ~ 0.5 0.8 0.5 0 30 force
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 5 0.5
###---演出---End

scoreboard players operation @s[tag=Dead] Damage += @s SkillAttribute
