#> enemy:break_spawner/enemy_count
#
# 敵の数をカウントする
#
# @within function enemy:break_spawner/

# 敵の数カウント
    execute store result score _ Calc if entity @e[distance=..12,tag=Enemy,tag=!Garbage]

# エンティティが一定数より多ければ破壊失敗
    execute unless score _ Calc matches ..15 run function enemy:break_spawner/failed_mine

# エンティティが一定数以下であれば破壊処理に入る
    execute if score _ Calc matches ..15 run function enemy:break_spawner/mined