##############################
### カスタムAIにします
##############################

### タグを付与
tag @s add CustomAI
### 移動速度無効化
function behaviour_manager:custom_ai/movement_speed/disable
### 初期向き設定
execute at 1-0-1-0-0 run function calc_manager:rotation/look_at_with_offset
execute at 1-0-0-0-0 rotated as @e[distance=0,tag=DataHolder,limit=1] positioned 0.0 0.0 0.0 run tp 0-0-0-0-10 ~ ~ ~ ~ ~
execute at @s rotated as 0-0-0-0-10 run tp @s ~ ~ ~ ~ ~
