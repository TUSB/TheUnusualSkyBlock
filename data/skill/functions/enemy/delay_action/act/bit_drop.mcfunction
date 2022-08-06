###ビットドロップ
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:28,Operation:2}
execute store result score @s TemporaryEffects run function calc:bit/