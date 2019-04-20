##############################
### ターゲットへの行動確認個別
##############################

### カーソル移動
function data_manager:move_cursor/target_id
### 姿勢読み込み
function data_manager:posture/load

### 上へ補正
scoreboard players set $Offset Distance 0
scoreboard players operation $Offset Distance = @s[tag=TargetPosition.Update] TargetUpward
execute unless score $Offset Distance matches 0 run function data_manager:posture/modify/upward
### 前へ補正
scoreboard players set $Offset Distance 0
scoreboard players operation $Offset Distance = @s[tag=TargetPosition.Update] TargetForward
execute unless score $Offset Distance matches 0 run function data_manager:posture/modify/forward
