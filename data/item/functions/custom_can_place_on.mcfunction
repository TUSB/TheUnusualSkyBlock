###メインハンドのブロックにAdv設置適性を設定
data modify storage item: Item set from entity @s SelectedItem
# アイテム更新 HideFlags 他のフラグは無視
data modify storage item: Item.tag.CanPlaceOn set value ["#item:can_place_on"]
data modify storage item: Item.tag.HideFlags set value 16
data modify storage item: Item.tag.CustomCanPlaceOn set value 1b
item modify entity @s weapon.mainhand item:storage/item
# トリガー解除
advancement revoke @s only item:custom_can_place_on
