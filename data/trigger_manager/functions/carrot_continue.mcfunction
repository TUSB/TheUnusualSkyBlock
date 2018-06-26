##############################
### 人参棒連続使用更新
##############################

scoreboard players remove @s CarrotTick 1

### 召喚士＜ぷちブラック＞
execute if entity @s[scores={CarrotTick=0,ModeSkill=61111..61119}] run scoreboard players operation @s ActiveSkill = @s ModeSkill
