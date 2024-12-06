#> skill:show_interval/check
#インターバル表示

#装備を取得
function player:load_equipments
function skill:equipments_to_items
data remove storage item: Item
# インターバル表示アイテムを取得
data modify storage item: Item set from storage item: Items[{components:{"minecraft:custom_data":{Skill:{ShowInterval:1b}}}}]

execute unless data storage item: Item run return fail
execute if data storage item: Item run function skill:show_interval/show
