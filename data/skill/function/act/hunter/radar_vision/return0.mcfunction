#> skill:act/hunter/radar_vision/return0
#
# レーダーヴィジョン復帰

# 座標移動
function #oh_my_dat:please
data modify storage skill: RadarVision set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RadarVision
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RadarVision
data modify storage anywhere: at set from storage skill: RadarVision
data modify storage anywhere: function set value "skill:act/hunter/radar_vision/return1"
function #anywhere:run
execute at @s run kill @e[tag=RadarVisionPoint,distance=..0.01]

# リセット
scoreboard players reset @s RadarVision
execute if data storage skill: RadarVision.Adventure run gamemode adventure @s
execute unless data storage skill: RadarVision.Adventure run gamemode survival @s

# 演出
function makeup:skill/act/hunter/radar_vision/return0
