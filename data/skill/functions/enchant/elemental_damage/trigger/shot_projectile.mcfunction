#属性ダメージ計算
function skill:enchant/elemental_damage/add
function skill:enchant/elemental_damage/boost/
#スコアを投射物に保存
execute as @e[type=#minecraft:impact_projectiles,tag=!Initialized,distance=..2] run function skill:enchant/elemental_damage/projectile/save
