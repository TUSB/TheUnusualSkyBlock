##############################
### はやぶさ斬り演出終了
##############################

scoreboard players reset @s FalconSlashTimer

### ビットドロップ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 30
function calc_manager:bit/drop_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global

###---演出---Start
function makeup:skill/act/knight/falcon_slash/decorate/finalize
###---演出---End
