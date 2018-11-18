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
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run particle minecraft:sweep_attack ~ ~ ~ 0.3 0.3 0.3 0 3 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 1.82
###---演出---End
