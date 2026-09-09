#> skill:act/white_mage/holy/tick
#
# ホーリー飛翔時

# 自動追尾
scoreboard players remove @s Interval 1
execute if score @s Interval matches ..0 if entity @e[distance=..15,tag=Enemy,limit=1,sort=nearest] run function skill:act/white_mage/holy/re_aim

# ダメージをロード、付与 アンデッドかどうかで分岐
data remove storage skill: damage.unreasonable
execute store result storage skill: damage.magic double 0.01 run scoreboard players get @s MagicAttack
execute as @e[tag=Enemy,type=!#undead,distance=..5] run function skill:damage/apply/
data remove storage skill: damage.magic
execute store result storage skill: damage.unreasonable double 0.01 run scoreboard players get @s MagicAttack
execute as @e[tag=Enemy,type=#undead,distance=..5] at @s run function skill:act/white_mage/holy/undead

# 演出
function makeup:skill/act/white_mage/holy/tick
execute as @e[tag=Enemy,distance=..5] at @s run function makeup:skill/act/white_mage/holy/hit
execute if entity @e[tag=Enemy,distance=..5] run function makeup:skill/act/white_mage/holy/hit_sound
