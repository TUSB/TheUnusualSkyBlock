
### はやぶさ斬り演出終了

scoreboard players reset @s FalconSlashTimer

# 演出中記録を解除する
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:30,Operation:2}
execute store result score @s TemporaryEffects run function calc:bit/

function makeup:skill/act/knight/falcon_slash/decorate/finalize
