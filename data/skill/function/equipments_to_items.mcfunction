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

data modify storage calc: Array.reverse.Input set from storage item: Equipments
function calc:array/reverse/
data modify storage item Items set from storage calc: Array.reverse.Output
