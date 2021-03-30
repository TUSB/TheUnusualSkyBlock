#ブロックに移す
data modify storage item: Items set from entity @s Items
function item:system/shulker_box/save
#正しい組み合わせか確認
execute in area:control_area positioned 2 2 2 store result score _ _ run function settings:item/enchant/
#成功時演出
execute if score _ _ matches 1 run function makeup:item/enchant/enchant
#成功時
execute if score _ _ matches 1 in area:control_area positioned 2 2 2 run function item:enchant/enchant/success/init
#エンチャント台を戻す
data modify storage item: Items append value {Slot:13b,id:"minecraft:enchanting_table",Count:1b,tag:{display:{Name:'{"translate":"エンチャント","color":"green","italic":false}'},NoHold:1b}}
#エンティティに戻す
data modify entity @s Items set from storage item: Items
