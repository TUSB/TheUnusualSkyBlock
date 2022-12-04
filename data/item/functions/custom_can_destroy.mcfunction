###メインハンドの道具にAdvロードストーン破壊適性を設定
data modify storage item: Item set from entity @s SelectedItem
# アイテム更新 HideFlags 他のフラグは無視
data modify storage item: Item.tag.CanDestroy set value ["minecraft:lodestone"]
data modify storage item: Item.tag.HideFlags set value 8
data modify storage item: Item.tag.CustomCanDestroy set value 1b
item modify entity @s weapon.mainhand item:storage/item
# トリガー解除
advancement revoke @s only item:custom_can_destroy
