## 自然湧きレベル変更
# @s _ 占有
execute store result score @s _ run data get entity @s ArmorItems[3].tag.SpawnEntities[][].Level 1
scoreboard players add @s _ 1
# _ Calc 占有
execute store result score _ Calc run function calc:island_clear_count
scoreboard players add _ Calc 10
# _ _ 占有
execute store result score _ _ run function calc:random
scoreboard players operation _ Calc *= @s _
# _ Calc 占有
scoreboard players set @s Calc 10
scoreboard players operation _ Calc /= @s Calc
scoreboard players operation _ _ %= _ Calc
scoreboard players operation _ _ += @s _
# _ Calc 解放
scoreboard players operation _ _ >< @s _
# _ _ 解放

# _ _ 占有
execute store result score _ _ run function calc:random
execute if score _ _ matches 0..511 run scoreboard players add @s _ 10
execute if score _ _ matches 0..511 run scoreboard players operation @s _ *= @s Calc
# @s Calc 解放
# _ _ 解放
execute store result entity @s ArmorItems[3].tag.SpawnEntities[][].Level int 1 run scoreboard players get @s _
# @s _ 解放