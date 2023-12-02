## 自然湧きレベル変更
# @s _ 占有
execute store result score @s _ run data get entity @s ArmorItems[3].tag.SpawnEntities[0][0].Level 1
scoreboard players add @s _ 1
# _ Calc 占有
execute store result score _ Calc run function calc:island/clear_count_percent
scoreboard players add _ Calc 100
scoreboard players operation _ Calc *= _ Calc
scoreboard players add _ Calc 2000
# _ _ 占有
execute store result score _ _ run function calc:random
scoreboard players operation _ Calc *= @s _
# _ Calc 占有
scoreboard players set @s Calc 2000
scoreboard players operation _ Calc /= @s Calc
scoreboard players operation _ _ %= _ Calc
scoreboard players operation _ _ += @s _
# _ Calc 解放
scoreboard players operation _ _ >< @s _
# _ _ 解放

# _ _ 占有
execute store result score _ _ run function calc:random
execute if score _ _ matches 0..511 run scoreboard players set @s Calc 10
execute if score _ _ matches 0..511 run scoreboard players add @s _ 10
execute if score _ _ matches 0..511 run scoreboard players operation @s _ *= @s Calc
execute if score _ _ matches 0..511 run tag @s add MutatedSpawn
# @s Calc 解放
# _ _ 解放
scoreboard players operation @s Level = @s _
# @s _ 解放