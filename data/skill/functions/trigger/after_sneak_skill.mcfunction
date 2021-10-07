
### スニーク解除時スキル発動

#装備を取得
function player:load_equipments

# スキル発動
data modify storage item: Item set from storage item: SelectedItem
function skill:practice/
