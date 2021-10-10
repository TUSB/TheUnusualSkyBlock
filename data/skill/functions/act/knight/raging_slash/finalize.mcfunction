
### 猛火斬ダメージ終了


# ダメージ中記録を解除する
execute store result storage calc: Bit.Flags int 1 run scoreboard players get @s TemporaryEffects
data modify storage calc: Bit merge value {Digit:29,Operation:2}
execute store result score @s TemporaryEffects run function calc:bit/

scoreboard players reset @s RagingDamage
