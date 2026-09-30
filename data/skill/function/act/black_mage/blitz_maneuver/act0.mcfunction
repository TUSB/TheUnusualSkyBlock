#> skill:act/black_mage/blitz_maneuver/act0
#
# ブリッツマニューバ発動

# Lv2では2回トリガー
execute if score _ Level matches 1 run scoreboard players set _ BlitzManeuver 100
execute if score _ Level matches 2 run scoreboard players set _ BlitzManeuver 1200

function skill:act/black_mage/blitz_maneuver/apply

# スニーク中なら周囲のプレイヤーにも付与
execute if score @s SneakTime matches 2 if score _ Level matches 1 run scoreboard players set _ BlitzManeuver 33
execute if score @s SneakTime matches 2 if score _ Level matches 2 run scoreboard players set _ BlitzManeuver 1066
execute if score @s SneakTime matches 2 as @a[distance=0.1..15] run function skill:act/black_mage/blitz_maneuver/apply
