#> enemy:break_spawner/multiply_count
#
# 周囲128m以内にいるプレイヤーの数によってHPを変動
#
# @within function enemy:break_spawner/

# マルチ補正倍率の計算 0.25 * N(人数) + 0.75
    execute store result score _ _ if entity @a[scores={Age=1..},predicate=entity:player,distance=..128]
    scoreboard players set _ Calc 25
    scoreboard players operation _ _ *= _ Calc
    scoreboard players set _ Calc 75
    scoreboard players operation _ _ += _ Calc
    scoreboard players set _ Calc 500
    scoreboard players operation _ _ < _ Calc
    execute store result score _ Calc run data get entity @s item.tag.Count
    execute store result entity @s item.tag.Count int 0.01 run scoreboard players operation _ _ *= _ Calc

# マルチ補正初期化タグ追加
    tag @s add MultiplyInit
