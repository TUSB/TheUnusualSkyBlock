#> entity:count/
#
# エンティティ数をカウントし、一定数以上であればGarbage付与をする
#
# @within function main:tick

# エンティティ数カウント
    execute store result score _ _ if entity @e[tag=Mob,tag=!Garbage]

# エンティティが一定数以上であればGarbageループ処理
# 401体以上に設定
    scoreboard players remove _ _ 400
    execute if score _ _ matches 0.. run function entity:count/loop

