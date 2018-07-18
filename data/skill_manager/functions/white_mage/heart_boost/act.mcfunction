##############################
### ハートブースト発動
##############################

###ディア設定
tag @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] add Dia
scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill
scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute = $Damage Global

###---演出---Start
###---演出---End
