
# ダメージ処理中を記録する
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:29,Operation:1}
execute store result score @s TemporaryEffects run function calc:bit/
