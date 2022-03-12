##############################
### エンティティ ルートドロップ
##############################

#リストから1つ取得
data modify storage item: LootTable set from storage item: LootTableList[-1]
#確率を判定
execute store result score _ Calc run function calc:random
scoreboard players operation _ Calc %= @s Calc
execute store result score @s _ run data get storage item: LootTable.Chance 100
execute if score _ Calc < @s _ run function entity:loot/loot
#ループ
data remove storage item: LootTableList[-1]
execute if data storage item: LootTableList[-1] run function entity:loot/loop
