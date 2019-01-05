##############################
### 猛火斬ダメージ終了
##############################

### ビットドロップ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 29
function calc_manager:bit/drop_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global

scoreboard players reset @s RagingDamage
