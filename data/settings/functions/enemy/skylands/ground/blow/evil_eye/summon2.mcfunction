#Function
# プレイヤーを特定してMarker召喚
    execute at @a[predicate=entity:player,sort=nearest,limit=1] run function calc:geometry/tp_00000
# Markerをランダムな方向にしてから調整
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 run tp 0-0-0-0-0 ^ ^ ^ ~ -10
# 召喚処理
    execute at 0-0-0-0-0 positioned ^ ^ ^3 run function settings:enemy/skylands/ground/blow/evil_eye/summon3
