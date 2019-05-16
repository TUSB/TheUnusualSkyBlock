##############################
### ターゲット位置記憶タイプ時位置保存
##############################

### ターゲット複製
function data_manager:replicater/current/replicate
### ターゲットIDをコピーに設定
scoreboard players operation @s TargetID = $Result ManagedDataID
