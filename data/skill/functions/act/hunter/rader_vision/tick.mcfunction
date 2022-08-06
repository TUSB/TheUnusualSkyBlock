##############################
### レーダーヴィジョンtick
##############################

scoreboard players remove @s RaderVision 1
execute if score @s RaderVision matches 0 run function skill:act/hunter/rader_vision/return0
### 演出
function makeup:skill/act/hunter/rader_vision/tick
