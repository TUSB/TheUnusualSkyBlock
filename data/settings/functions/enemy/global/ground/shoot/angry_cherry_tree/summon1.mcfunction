#Function
# Markerを召喚する
    function calc:geometry/tp_00000
# ランダム
    execute as 0-0-0-0-0 run function calc:set/random_rotation
# 自機狙い、自機外しはランダム
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 2
    scoreboard players operation _ Random %= _ _
# 自機狙い
    execute if score _ Random matches 0 rotated as 0-0-0-0-0 rotated ~ 0 run function settings:enemy/global/ground/shoot/angry_cherry_tree/summon2
# 自機外し
    execute if score _ Random matches 1 rotated as 0-0-0-0-0 rotated ~ 0 run function settings:enemy/global/ground/shoot/angry_cherry_tree/summon3
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
