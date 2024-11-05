#blockにコピー
data modify storage item: Items set value []
data modify storage item: Items append from entity @s Items[{Slot:10b}]
data modify storage item: Items append from entity @s Items[{Slot:11b}]
data modify storage item: Items append from entity @s Items[{Slot:15b}]
data modify storage item: Items append from entity @s Items[{Slot:16b}]
function item:system/shulker_box/save
#スロット数を取得
execute store result score _ Calc run data get storage item: Items
#正しい組み合わせならloot
execute in area:control_area positioned 2 2 2 store result score _ _ run function settings:item/lapidary/
#成功時
execute if score _ _ matches 1 run function item:lapidary/lapidary/success
#refill呼び出し
function item:lapidary/anvil/refill
#演出
function makeup:item/lapidary/check
