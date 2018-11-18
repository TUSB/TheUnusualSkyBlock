##############################
### 斬鉄剣斬撃タイミング調整
##############################

scoreboard players remove @s OdinSlash 1
execute if score @s OdinSlash matches 26 run function skill_manager:knight/odin_slash/act1
execute if score @s OdinSlash matches 13 run function skill_manager:knight/odin_slash/act2
execute if score @s OdinSlash matches 0 run function skill_manager:knight/odin_slash/act3
scoreboard players reset @s[scores={OdinSlash=..0}] OdinSlash
