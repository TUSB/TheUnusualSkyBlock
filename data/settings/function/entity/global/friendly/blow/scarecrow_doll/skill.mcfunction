#Function
# 敵に微小単位のダメージを送り付けて敵対化させる
    tag @s add This
    execute as @e[tag=Enemy,distance=..8] run damage @s 0.001 mob_attack by @e[distance=..0.01,tag=This,limit=1]
    tag @a remove This
