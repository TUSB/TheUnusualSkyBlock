##############################
### カスタムAIにします
##############################

### タグを付与
tag @s add CustomAI
### 移動速度無効化
function behaviour_manager:ai_switcher/movement_speed/disable
### 初期向き設定
execute positioned as 1-0-1-0-0 run function calc_manager:rotation/look_at_with_offset
execute at @s rotated as 0-0-0-0-10 run tp @s ~ ~ ~ ~ ~
