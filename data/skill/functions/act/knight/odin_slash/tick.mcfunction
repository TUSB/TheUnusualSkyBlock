
### 斬鉄剣斬撃タイミング調整

scoreboard players remove @s OdinSlash 1

execute if score @s OdinSlash matches 26 run function skill:act/knight/odin_slash/slash
execute if score @s OdinSlash matches 13 run function skill:act/knight/odin_slash/slash
execute if score @s OdinSlash matches 0 run function skill:act/knight/odin_slash/slash
