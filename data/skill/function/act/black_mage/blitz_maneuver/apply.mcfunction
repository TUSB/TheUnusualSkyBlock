#> skill:act/black_mage/blitz_maneuver/apply
#
# ブリッツマニューバ適用
scoreboard players operation @s BlitzManeuver = _ BlitzManeuver
scoreboard players set @s Interval 0

# 演出
function makeup:skill/act/black_mage/blitz_maneuver/apply
