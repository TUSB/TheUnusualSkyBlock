
### TIPS抑制

execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TipsSuppressFlag
execute store result storage calc: Bit.Digit int 1 run scoreboard players get @s TipsSupTrigger
data modify storage calc: Bit.Operation set value 1
function calc:bit/
execute store result score @s TipsSuppressFlag run data get storage calc: Bit.Flags

tellraw @s {"translate":"[INFO] このTIPSを除外しました。ばいばい！","bold":true}

# トリガー再有効化
scoreboard players reset @s TipsSupTrigger
scoreboard players enable @s TipsSupTrigger
