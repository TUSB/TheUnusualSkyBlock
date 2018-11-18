##############################
### 幻影演出終了処理
##############################

scoreboard players reset @s BlinkSubTimer

### ビットドロップ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 31
function calc_manager:bit/drop_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global

effect clear @s[tag=!Invisible] minecraft:invisibility
effect clear @s[tag=!Glowing] minecraft:glowing
