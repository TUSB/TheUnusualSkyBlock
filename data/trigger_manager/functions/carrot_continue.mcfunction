##############################
### 人参棒連続使用更新
##############################

scoreboard players remove @s CarrotTick 1

### 召喚士＜ぷちブラック＞
execute if score @s CarrotTick matches 0 if entity @s[scores={ModeSkill=61111..61119,SkillInterval=..0}] run function skill_manager:summoner/petit_black/launch

execute if score @s CarrotTick matches 0 run scoreboard players set @s CarrotContinue 0
