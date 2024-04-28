##############################
### ワイルドクッキング アイテム消費
##############################

data modify storage item: Item set from storage item: Items[-1]

execute if data storage item: Item{id:"minecraft:cooked_chicken"} run scoreboard players add @s HealthHealing 8
execute if data storage item: Item{id:"minecraft:rabbit_stew"} run effect give @s regeneration 15 2
execute if data storage item: Item{id:"minecraft:cookie"} run scoreboard players add @s MP 30
execute if data storage item: Item{id:"minecraft:cookie"} run scoreboard players operation @s MP < @s MPMax
#MP自然回復頻度上昇
execute if data storage item: Item{id:"minecraft:pumpkin_pie"} run scoreboard players add @s MPAcceleration 100
#バーストゲージ増加
execute if data storage item: Item{id:"minecraft:honey_bottle"} unless score $World Burst matches -1 run scoreboard players add $World Burst 120
effect give @s saturation 1 2

#ループ処理
execute store result storage item: Items[-1].Count int 0.99999 run data get storage item: Items[-1].Count
execute if data storage item: Items[{Count:0}] run data remove storage item: Items[-1]
execute if data storage item: Items[-1] run function skill:act/hunter/wild_cooking/eat1
#演出
function makeup:skill/act/hunter/wild_cooking/eat
