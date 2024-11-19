#> player:trigger/use/bow
#装備を取得
function player:load_equipments
#メインハンドがトリガーのアイテムでなければ交換
execute unless data storage item: SelectedItem{id:"minecraft:bow"} run function player:trigger/use/if_not_mainhand
#物理ダメージ取得
function skill:damage/add/physical/projectile
#属性ダメージ取得
function skill:damage/add/elemental
#ピアッシングエイム適用
execute if score @s PiercingAim matches 1.. run function skill:act/hunter/piercing_aim/apply0
#スキル
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{tag:{Skill:{Trigger:"弓を構えて矢を撃つ"}}}]
execute if data storage item: Item.tag.Skill{Trigger:"弓を構えて矢を撃つ"} run function skill:practice/
#ダメージと装備を保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function player:trigger/projectile/save
#トリガーリセット
scoreboard players reset @s UseBow
