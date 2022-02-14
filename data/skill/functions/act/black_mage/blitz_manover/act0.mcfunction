
### ブリッツマニューバ発動

#Lv2では2回トリガー
execute if score _ Level matches 1 run scoreboard players set _ BlitzManover 100
execute if score _ Level matches 2 run scoreboard players set _ BlitzManover 1200

execute unless score @s SneakTime matches 2 run function skill:act/black_mage/blitz_manover/apply
execute if score @s SneakTime matches 2 as @a[distance=..15] run function skill:act/black_mage/blitz_manover/apply
