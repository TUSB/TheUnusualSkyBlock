##############################
### ブリッツマニューバ発動
##############################

#Lv2では2回トリガー
execute if score @s SupportSkill matches 52031 run scoreboard players set $BlitzManover Global 100
execute if score @s SupportSkill matches 52032 run scoreboard players set $BlitzManover Global 1200

execute as @a[distance=..15] run function skill_manager:black_mage/blitz_manover/apply
