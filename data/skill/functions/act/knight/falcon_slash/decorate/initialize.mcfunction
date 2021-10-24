
### はやぶさ斬り演出開始

execute store result score @s FalconSlashTimer run scoreboard players add _ FalconSlashTimer 1

# 演出中を記録する
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:30,Operation:1}
execute store result score @s TemporaryEffects run function calc:bit/
