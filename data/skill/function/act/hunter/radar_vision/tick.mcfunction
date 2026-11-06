#> skill:act/hunter/radar_vision/tick
#
# レーダーヴィジョンtick
scoreboard players remove @s RadarVision 1
execute if score @s RadarVision matches 0 run function skill:act/hunter/radar_vision/return0

# 演出
function makeup:skill/act/hunter/radar_vision/tick
