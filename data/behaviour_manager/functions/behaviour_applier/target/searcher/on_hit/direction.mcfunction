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
### 体の位置に合わせる
function data_manager:posture/get_value/eye_height
scoreboard players operation $Offset Distance = $Result EyeHeight
function data_manager:posture/modify/upward
### 向きのみにする
function data_manager:posture/modify/extract_direction
### 姿勢保存
function data_manager:posture/save
