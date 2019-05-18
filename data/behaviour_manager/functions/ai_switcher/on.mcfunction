##############################
### カスタムAIにします
##############################

### タグを付与
tag @s add CustomAI
### 移動速度無効化
function behaviour_manager:ai_switcher/movement_speed/disable

### 自身の向きを読み込む
function data_manager:cursor/data_id/load_rotation
### ターゲット位置読み込み
function data_manager:posture/load
### 初期向き補正
execute positioned as 1-0-1-0-0 run function calc_manager:rotation/look_at_with_offset
function data_manager:cursor/data_id/save_rotation
