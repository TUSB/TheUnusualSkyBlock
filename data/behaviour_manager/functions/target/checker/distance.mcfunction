##############################
### ターゲットの距離が足りているか
##############################

### カーソル移動
function data_manager:posture/load

### 距離確認
scoreboard players operation @s TargetDistance = $Result Distance
execute if score $Result Distance > @s LostRange run scoreboard players set $Presence SuccessCount 0
