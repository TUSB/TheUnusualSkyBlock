#装備を取得
function player:load_equipments
##装備を投射物のoh_my_datに保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function player:trigger/shot_projectile/save
#トリガーリセット
scoreboard players reset @s UseCrossbow
