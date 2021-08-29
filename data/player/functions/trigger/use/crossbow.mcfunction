#装備を取得
function player:load_equipments
#物理ダメージ取得
function skill:damage/add/physical/projectile
#属性ダメージ取得
function skill:damage/add/elemental
#スキル
execute if data storage item: SelectedItem.tag.Skill{Trigger:"クロスボウを構えて矢を撃つ"} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag.Skill{Trigger:"クロスボウを構えて矢を撃つ"} run function skill:practice/
#ダメージと装備を保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function player:trigger/projectile/save
#トリガーリセット
scoreboard players reset @s UseCrossbow
