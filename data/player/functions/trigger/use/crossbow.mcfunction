#装備を取得
function player:load_equipments
##装備を投射物のoh_my_datに保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function player:trigger/shot_projectile/save
#スキル
execute if data storage item: SelectedItem.tag.Skill{Trigger:"クロスボウを構えて矢を撃つ"} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag.Skill{Trigger:"クロスボウを構えて矢を撃つ"} run function skill:practice/
#トリガーリセット
scoreboard players reset @s UseCrossbow
