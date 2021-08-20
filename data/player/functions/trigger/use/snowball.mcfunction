#装備を取得
function player:load_equipments
##ダメージと装備を保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function player:trigger/projectile/save
#トリガーリセット
scoreboard players reset @s UseSnowball
