#> item:can_break
###メインハンドの道具にAdv破壊適性を設定
data modify storage item: Items set value []
data modify storage item: Items append from entity @s SelectedItem
# アイテム更新
data modify storage item: Items[0].components."minecraft:can_break" set value {predicates:[{blocks:"#item:can_break"}],show_in_tooltip:false}
data modify storage item: Items[0].components."minecraft:custom_data".CustomCanBreak set value 1b
function item:system/shulker_box/save
execute in area:control_area run item replace entity @s weapon.mainhand from block 2 2 2 container.0
# トリガー解除
advancement revoke @s only item:can_break
