##############################
### 幻影演出開始処理
##############################

scoreboard players set @s BlinkSubTimer 7

effect give @s[tag=!Invisible] minecraft:invisibility 1 0 true
effect give @s[tag=!Glowing] minecraft:glowing 1 0 true

### ビットレイズ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 31
function calc_manager:bit/raise_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global

###---演出---Start
###---演出---End
