##############################
### ホーリー飛翔時
##############################

#ダメージをロード
function skill:damage/load/
#ダメージ付与
execute as @e[distance=..5,tag=Mob] positioned as @s run function skill:act/white_mage/holy/hit
#演出
function makeup:skill/act/white_mage/holy/tick
execute if entity @e[distance=..5,tag=Mob] run function makeup:skill/act/white_mage/holy/hit_sound
