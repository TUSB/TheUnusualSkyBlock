#装備を取得
function player:load_equipments
#スキル
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{tag:{Skill:{Trigger:"手に持って右クリック"}}}]
execute if data storage item: Item.tag.Skill{Trigger:"手に持って右クリック"} run function skill:practice/
#トリガーリセット
scoreboard players reset @s UseCarrotStick
