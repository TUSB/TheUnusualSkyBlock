#> player:trigger/use/if_not_mainhand
# メインハンドのアイテムでトリガーが実行されていないとき
# オフハンドとメインハンドを好感して処理する

data modify storage item: SelectedItem set from storage item: Equipments[{Slot:-106b}]
data remove storage item: Equipments[{Slot:-106b}]
data modify storage item: Equipments prepend from storage item: SelectedItem
