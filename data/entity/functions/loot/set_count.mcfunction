##############################
### エンティティ ルートドロップ
##############################

#個数を設定 上限99個 ルートテーブルの個数は上書きされる
execute store result score _ _ run data get storage item: LootTable.CountRange
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result score @s _ run data get storage item: LootTable.Count
scoreboard players operation _ Calc += @s _
execute as @e[type=item,tag=,distance=0] store result entity @s Item.Count byte 1 run scoreboard players get _ Calc
