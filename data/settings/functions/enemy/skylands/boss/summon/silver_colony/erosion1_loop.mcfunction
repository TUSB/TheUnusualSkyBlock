#Function
# XYZそれぞれの座標を-5 ~ 5のRangeで動かす
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 110
    scoreboard players operation _ Random %= _ _
    scoreboard players remove _ Random 50
    execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[0] 10
    execute store result entity 0-0-0-0-0 Pos[0] double 0.1 run scoreboard players operation _ Random += _ Calc
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 110
    scoreboard players operation _ Random %= _ _
    scoreboard players remove _ Random 50
    execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[1] 10
    execute store result entity 0-0-0-0-0 Pos[1] double 0.1 run scoreboard players operation _ Random += _ Calc
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 110
    scoreboard players operation _ Random %= _ _
    scoreboard players remove _ Random 50
    execute store result score _ Calc run data get entity 0-0-0-0-0 Pos[2] 10
    execute store result entity 0-0-0-0-0 Pos[2] double 0.1 run scoreboard players operation _ Random += _ Calc
# 0-0-0-0-0の座標に目的のBlockがあるなら操作打ち切り
# 目的のBlockがないなら3回までループ
    execute at 0-0-0-0-0 if block ~ ~ ~ infested_cracked_stone_bricks run scoreboard players add # Calc 1
    scoreboard players add # _ 1
    execute if score # Calc matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function calc:geometry/tp_00000
    execute if score # Calc matches 0 if score # _ matches ..3 run function settings:enemy/skylands/boss/summon/silver_colony/erosion1_loop
