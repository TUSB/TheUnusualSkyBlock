##############################
### 魅了開始処理
##############################

### ビットレイズ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 32
function calc_manager:bit/raise_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global

###---演出---Start
###---演出---End
