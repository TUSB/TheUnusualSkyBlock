##############################
### ディア発動
##############################

###威力算出
execute if score @s ModeSkill matches 41021 run scoreboard players set $Damage Global 10000
execute if score @s ModeSkill matches 41022 run scoreboard players set $Damage Global 20000
execute if score @s ModeSkill matches 41023 run scoreboard players set $Damage Global 30000
execute if score @s ModeSkill matches 41024 run scoreboard players set $Damage Global 40000
function calc_manager:apply_damage_modifier

###ディア設定
tag @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] add Dia
scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill
scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute = $Damage Global

###---演出---Start
###---演出---End
