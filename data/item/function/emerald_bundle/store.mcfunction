#> item:emerald_bundle/store
#上限を超えないようにバンドルに移す
data modify storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents" append from storage item: EmeraldBundle.Items[0]
execute store result score _ _ run data get storage item: EmeraldBundle.Items[0].count
execute if score # Calc < _ _ store result storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents"[-1].count int 1 run scoreboard players get # Calc
execute store result storage item: EmeraldBundle.Items[0].count int -1 run scoreboard players operation # Calc -= _ _

#減らしたアイテム(または空)をルート
data modify storage item: Slot set from storage item: EmeraldBundle.Items[0].Slot
data modify storage item: Items set from storage item: EmeraldBundle.Items
data modify storage item: Items[0].Slot set value 0b
execute if score # Calc matches 0.. run data modify storage item: Items[0].components."minecraft:custom_data".NoHold set value true
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player

#再帰処理
data remove storage item: EmeraldBundle.Items[0]
execute if score # Calc matches 1.. if data storage item: EmeraldBundle.Items[0] run function item:emerald_bundle/store
