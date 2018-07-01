##############################
### 手裏剣発動
##############################

###---演出---Start
say 発動したよ
###---演出---End

data merge entity @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[Shuriken]}
scoreboard players operation @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill

execute if score @s ModeSkill matches 21011 positioned ~ ~1.52 ~ run scoreboard players set @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute 1000
execute if score @s ModeSkill matches 21012 positioned ~ ~1.52 ~ run scoreboard players set @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute 2000
execute if score @s ModeSkill matches 21013 positioned ~ ~1.52 ~ run scoreboard players set @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute 3500
execute if score @s ModeSkill matches 21014 positioned ~ ~1.52 ~ run scoreboard players set @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute 5500
execute if score @s ModeSkill matches 21015 positioned ~ ~1.52 ~ run scoreboard players set @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute 8000
