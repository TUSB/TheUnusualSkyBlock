#>skill:act/knight/raging_slash/act1
## 猛火斬発動

# 回数設定
scoreboard players operation _ RagingCount = @s RagingCount
scoreboard players set _ _ 1000
scoreboard players operation _ RagingCount %= _ _
execute store result score _ _ if entity @e[distance=..5,tag=Enemy]
# 幻影
execute as @e[distance=..5,tag=Enemy] run function skill:act/knight/raging_slash/get_blink
scoreboard players operation _ RagingCount += _ _
scoreboard players add _ RagingCount 3
# 攻撃回数は1000以上にならない
scoreboard players set _ _ 999
scoreboard players operation _ RagingCount < _ _

# スキルレベル*1000+回数 として保存
scoreboard players operation @s RagingCount = _ Level
scoreboard players set _ _ 1000
scoreboard players operation @s RagingCount *= _ _
scoreboard players operation @s RagingCount += _ RagingCount

scoreboard players add @s NativeFlag 100
