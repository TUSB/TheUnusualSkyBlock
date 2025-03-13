#>skill:act/knight/raging_slash/act1
## 猛火斬発動

# 回数設定
scoreboard players operation _ RagingCount = @s RagingCount
execute store result score _ _ if entity @e[distance=..5,tag=Enemy]
# 幻影
execute as @e[distance=..5,tag=Enemy] run function skill:act/knight/raging_slash/get_blink
scoreboard players operation _ RagingCount += _ _
scoreboard players add _ RagingCount 3
tellraw @a [{"score":{"name":"_","objective":"RagingCount"}}]

# 攻撃回数を保存
scoreboard players operation @s RagingCount = _ RagingCount
