#上限を超えないようにバンドルに移す
data modify storage item: EmeraldBundle.Bundle.tag.Items append from storage item: EmeraldBundle.Items[0]
execute store result score _ _ run data get storage item: EmeraldBundle.Items[0].Count
execute if score # Calc < _ _ store result storage item: EmeraldBundle.Bundle.tag.Items[-1].Count byte 1 run scoreboard players get # Calc
execute store result storage item: EmeraldBundle.Items[0].Count byte -1 run scoreboard players operation # Calc -= _ _

#減らしたアイテム(または空)をルート
data modify storage item: Slot set from storage item: EmeraldBundle.Items[0].Slot
data modify storage item: Items set from storage item: EmeraldBundle.Items
data modify storage item: Items[0].Slot set value 0b
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player

#再帰処理
data remove storage item: EmeraldBundle.Items[0]
execute if score # Calc matches 1.. if data storage item: EmeraldBundle.Items[0] run function item:emerald_bundle/store
