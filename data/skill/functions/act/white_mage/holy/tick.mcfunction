##############################
### ホーリー飛翔時
##############################

#ダメージをロード
function skill:damage/load
#生物にダメージ付与
execute as @e[tag=Mob,type=#entity:living,distance=..5] positioned as @s run function skill:act/white_mage/holy/hit
#アンデッドはダメージ4倍
scoreboard players set _ Calc 400
function skill:damage/modify
execute as @e[tag=Mob,type=#entity:undead,distance=..5] positioned as @s run function skill:act/white_mage/holy/hit
#演出
function makeup:skill/act/white_mage/holy/tick
execute if entity @e[distance=..5,tag=Mob] run function makeup:skill/act/white_mage/holy/hit_sound
