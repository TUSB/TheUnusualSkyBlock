##############################
### ワイルドフレア発動
##############################

###矢修正 ###総ダメージ 240->400(->720) 範囲5体として 1200->2000(->3600)
execute if score @s ModeSkill matches 31061 run scoreboard players set $Damage Global 120
execute if score @s ModeSkill matches 31062 run scoreboard players set $Damage Global 200
execute if score @s ModeSkill matches 31063 run scoreboard players set $Damage Global 320
function calc_manager:apply_damage_modifier

scoreboard players operation @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] SkillAttribute = $Damage Global

execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run data merge entity @s {PortalCooldown:2,Tags:[WildFlareSeed,CooldownRequired]}
