##############################
### 魅了終了処理
##############################

scoreboard players reset @s CharmCount

tellraw @a[distance=..16] [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"魅了","color":"white"},"が切れた。"]

### ビットドロップ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 32
function calc_manager:bit/drop_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global
