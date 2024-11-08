#> item:emerald_bundle/success
#残り容量を計算
scoreboard players set # Calc 64
scoreboard players operation # Calc -= _ Calc

#エメラルドを両替して入れる
execute store result score _ Calc run clear @s emerald 0
scoreboard players set _ _ 64
scoreboard players operation _ Calc /= _ _
scoreboard players operation _ Calc < # Calc
scoreboard players operation # Calc -= _ Calc
execute if score _ Calc matches 1.. in area:control_area run loot replace block 2 2 2 container.0 loot item:item/iron_nugget/currency_megaton_emerald
execute if score _ Calc matches 1.. in area:control_area run function item:emerald_bundle/exchange

#メガトンエメラルドを入れる
data modify storage item: EmeraldBundle.Items set value []
data modify storage item: EmeraldBundle.Items append from storage item: EmeraldBundle.Inventory[{id:"minecraft:iron_nugget",components:{"minecraft:custom_model_data":1}}]
execute if score # Calc matches 1.. if data storage item: EmeraldBundle.Items[0] run function item:emerald_bundle/store

#バンドルをルート
data modify storage item: Items set value []
data modify storage item: Items append from storage item: EmeraldBundle.Bundle
data modify storage item: Slot set from storage item: Items[0].Slot
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player

#成功フラグを立てる
data modify storage item: EmeraldBundle.Success set value 1b
