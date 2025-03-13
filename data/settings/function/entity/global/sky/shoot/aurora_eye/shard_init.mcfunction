#Function
# 向き合わせ
    tp @s ^ ^ ^ ~ ~
# 色をランダムにする
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 3
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 1 run data modify entity @s item.tag.Explosion.Colors set value [I;5892607]
    execute if score _ Random matches 2 run data modify entity @s item.tag.Explosion.Colors set value [I;6213631]
