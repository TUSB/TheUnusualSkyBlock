#> player:trigger/use/trident
#装備を取得
function player:load_equipments
#メインハンドがトリガーのアイテムでなければ交換
execute unless data storage item: SelectedItem{id:"minecraft:trident"} run function player:trigger/use/if_not_mainhand
#物理ダメージ取得
function skill:damage/add/physical/projectile
#属性ダメージ取得
function skill:damage/add/elemental
##ダメージと装備を保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function player:trigger/projectile/save
#トリガーリセット
scoreboard players reset @s UseTrident
