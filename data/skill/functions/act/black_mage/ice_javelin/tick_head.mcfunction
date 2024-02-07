
### アイスジャベリン先頭処理

# 演出
function makeup:skill/act/black_mage/ice_javelin/tick_head

scoreboard players operation _ _ = @s TrackingID

###紐付け
execute as @a if score @s OhMyDatID = _ _ at @s run function calc:geometry/tp_00002

### 行き帰り計算
execute if entity @s[tag=!Reversed] run function skill:act/black_mage/ice_javelin/tick_forward
execute if entity @s[tag=Reversed] run function skill:act/black_mage/ice_javelin/tick_backward

### 氷半減フラグ
execute store result score @s _ run data get entity @s PortalCooldown
scoreboard players set _ _ 2
scoreboard players operation @s _ %= _ _

### 氷発生
execute if score @s _ matches 0 run function skill:act/black_mage/ice_javelin/summon_trail

### 氷進行
tp @s ^ ^ ^2

### 氷制限
execute if entity @s[tag=Reversed] unless block ~ ~1.52 ~ minecraft:air run kill @s
execute unless entity @s[tag=Reversed] unless block ~ ~1.52 ~ minecraft:air run tp @s ^ ^ ^-4
execute unless entity @s[tag=Reversed] unless block ~ ~1.52 ~ minecraft:air run tag @s add Reversed
execute at 0-0-0-0-2 unless entity @s[distance=..34] run kill @s
execute at 0-0-0-0-2 unless entity @s[distance=..28] run tag @s add Reversed
execute at 0-0-0-0-2 run kill @s[tag=Reversed,distance=..2]

execute as 0-0-0-0-2 run function calc:geometry/return_marker
