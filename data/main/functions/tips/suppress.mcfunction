##############################
### TIPS抑制
##############################

scoreboard players operation $BitFlags Global = @s TipsSuppressFlag
scoreboard players operation $Digit Global = @s TipsSupTrigger
function calc_manager:bit/raise_at_x_digit
scoreboard players operation @s TipsSuppressFlag = $BitFlags Global

tellraw @s {"text":"[INFO] このTIPSを除外しました。ばいばい！","bold":true}

### トリガー再有効化
scoreboard players reset @s TipsSupTrigger
scoreboard players enable @s TipsSupTrigger
