#装備を取得
function player:load_equipments
#スキル
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{tag:{Skill:{Trigger:"人参棒を使用"}}}]
execute if data storage item: Item.tag.Skill{Trigger:"人参棒を使用"} run function skill:practice/
#トリガーリセット
scoreboard players reset @s UseCarrotStick
