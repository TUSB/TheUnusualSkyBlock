#> player:trigger/use/shield
### 盾で防御

#装備を取得
function player:load_equipments

### スキル
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{components:{"minecraft:custom_data":{Skill:{Trigger:"盾で攻撃を防ぐ"}}}}]
execute if data storage item: Item.components."minecraft:custom_data".Skill{Trigger:"盾で攻撃を防ぐ"} run function skill:practice/
#トリガーリセット
advancement revoke @s only player:trigger/use/shield
