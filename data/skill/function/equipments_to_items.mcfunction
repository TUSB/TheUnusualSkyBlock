#> skill:equipments_to_items
#> 装備情報をItemsに反転変換
#
# 防具・両手のアイテムの装備情報から反転する
#
# item: Equipments
#     ↓
# item: Items
#
# 順番：防具 → オフハンド → メインハンド
#

data modify storage item: Items set value []
data modify storage item: Items append from storage item: Equipments[5]
data modify storage item: Items append from storage item: Equipments[4]
data modify storage item: Items append from storage item: Equipments[3]
data modify storage item: Items append from storage item: Equipments[2]
data modify storage item: Items append from storage item: Equipments[1]
data modify storage item: Items append from storage item: Equipments[0]
