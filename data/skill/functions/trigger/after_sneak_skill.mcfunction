
### スニーク解除時スキル発動

#装備を取得
function player:load_equipments

# スキル発動
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{tag:{Skill:{Trigger:"剣を持った状態でスニーク解除"}}}]
execute if data storage item: Item.tag.Skill{Trigger:"剣を持った状態でスニーク解除"} run function skill:practice/
