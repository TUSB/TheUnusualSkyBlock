#> skill:act/summoner/petit_black/mob_apply

# マーカー召喚
    execute facing entity @s feet in area:control_area positioned 0.0 0.0 0.0 run function calc:geometry/tp_00000
# 距離を取得
    execute store result score _ _ run function calc:geometry/distance/
# 距離によって重力を変化させる
    execute if score _ _ matches ..100 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.1 ~ ~
    execute if score _ _ matches 101..200 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.2 ~ ~
    execute if score _ _ matches 201..300 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.3 ~ ~
    execute if score _ _ matches 301..400 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.4 ~ ~
    execute if score _ _ matches 401..500 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.5 ~ ~
    execute if score _ _ matches 501..600 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.6 ~ ~
    execute if score _ _ matches 601..700 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.7 ~ ~
    execute if score _ _ matches 701..800 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.6 ~ ~
    execute if score _ _ matches 801..900 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.5 ~ ~
    execute if score _ _ matches 901..1000 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.4 ~ ~
    execute if score _ _ matches 1001..1100 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.3 ~ ~
    execute if score _ _ matches 1101..1200 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.2 ~ ~
    execute if score _ _ matches 1201..1300 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.1 ~ ~
    execute if score _ _ matches 1301..1400 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.05 ~ ~
    execute if score _ _ matches 1401..1500 as 0-0-0-0-0 at @s run tp @s ^ ^ ^-0.025 ~ ~
# 重力適用
    execute store result score @s Calc run data get entity @s Motion[0] 100
    execute store result score @s _ run data get entity 0-0-0-0-0 Pos[0] 100
    execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s Calc += @s _
    execute store result score @s Calc run data get entity @s Motion[1] 100
    execute store result score @s _ run data get entity 0-0-0-0-0 Pos[1] 100
    execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s Calc += @s _
    execute store result score @s Calc run data get entity @s Motion[2] 100
    execute store result score @s _ run data get entity 0-0-0-0-0 Pos[2] 100
    execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s Calc += @s _