##############################
### レーダーヴィジョン復帰
##############################

### 座標移動
function #oh_my_dat:please
data modify storage skill: RaderVision set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaderVision
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaderVision
function calc:geometry/tp_00000
execute as 0-0-0-0-0 run function skill:act/hunter/rader_vision/return1
### リセット
scoreboard players reset @s RaderVision
execute if data storage skill: RaderVision.Adventure run gamemode adventure @s
execute unless data storage skill: RaderVision.Adventure run gamemode survival @s
### 演出
function makeup:skill/act/hunter/rader_vision/return0
