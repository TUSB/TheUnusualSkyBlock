#> entity:count/loop
#
# Garbage付与 ループ処理
#
# @within function entity:count/

# 生まれた順にGarbage付与
    tag @e[tag=Mob,tag=!Garbage,limit=1] add Garbage
    scoreboard players remove _ _ 1
    execute if score _ _ matches 0.. run function entity:count/loop