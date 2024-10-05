##############################
### ホーリー飛翔時
##############################

#自動追尾
scoreboard players remove @s Interval 1
execute if score @s Interval matches ..0 if entity @e[distance=..15,tag=Enemy,limit=1,sort=nearest] run function skill:act/white_mage/holy/re_aim
#ダメージをロード
function skill:damage/load
#ダメージ付与
execute as @e[tag=Enemy,distance=..5] positioned as @s run function skill:act/white_mage/holy/hit
#演出
function makeup:skill/act/white_mage/holy/tick
execute if entity @e[distance=..5,tag=Enemy] run function makeup:skill/act/white_mage/holy/hit_sound
