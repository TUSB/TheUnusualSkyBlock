#> player:trigger/use/carrot_on_a_stick
#装備を取得
function player:load_equipments
#スキル
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{components:{"minecraft:custom_data":{Skill:{Trigger:"手に持って右クリック"}}}}]
execute if data storage item: Item.components."minecraft:custom_data".Skill{Trigger:"手に持って右クリック"} run function skill:practice/
#トリガーリセット
scoreboard players reset @s UseCarrotStick
