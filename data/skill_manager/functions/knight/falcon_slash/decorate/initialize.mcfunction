##############################
### はやぶさ斬り演出開始
##############################

scoreboard players add $Timer Global 1
execute store result score @s FalconSlashTimer run scoreboard players get $Timer Global

### ビットレイズ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 30
function calc_manager:bit/raise_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global
