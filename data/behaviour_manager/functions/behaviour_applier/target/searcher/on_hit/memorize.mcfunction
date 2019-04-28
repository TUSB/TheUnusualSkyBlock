##############################
### ターゲット位置記憶タイプ時位置保存
##############################

### ターゲット複製
function data_manager:replicater/current/replicate
### ターゲットIDをコピーに設定
scoreboard players operation @s TargetID = $Result ManagedDataID

### カーソル移動
function data_manager:move_cursor/target_id
### 姿勢読み込み
function data_manager:posture/load
### 上に補正
scoreboard players operation $Offset Distance = @s TargetUpward
function data_manager:posture/modify/upward
### 前に補正
scoreboard players operation $Offset Distance = @s TargetForward
function data_manager:posture/modify/forward
### 姿勢保存
function data_manager:posture/save
