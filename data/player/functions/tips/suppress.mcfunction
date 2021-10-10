
### TIPS抑制

execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TipsSuppressFlag
execute store result storage calc: Bit.Digit int 1 run scoreboard players get @s TipsSupTrigger
data modify storage calc: Bit.Operation set value 1
execute store result score @s TipsSuppressFlag run function calc:bit/

tellraw @s {"translate":"[INFO] このTIPSを除外しました。ばいばい！","bold":true}

# トリガー再有効化
scoreboard players reset @s TipsSupTrigger
scoreboard players enable @s TipsSupTrigger
