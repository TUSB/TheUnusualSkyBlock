#> ai:skill/damage/use_shield

# ダメージを削除
data remove storage entity: damage

### 盾で防御
function makeup:player/trigger/using/shield
#装備を取得
function player:load_equipments

### スキル
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{tag:{Skill:{Trigger:"盾で攻撃を防ぐ"}}}]
execute if data storage item: Item.tag.Skill{Trigger:"盾で攻撃を防ぐ"} run function skill:practice/
