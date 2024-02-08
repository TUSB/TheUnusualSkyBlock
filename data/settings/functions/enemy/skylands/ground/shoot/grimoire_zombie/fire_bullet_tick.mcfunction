#Function
# Markerを召喚してパーティクルを表示
    function calc:geometry/tp_00000
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 run function settings:enemy/skylands/ground/shoot/grimoire_zombie/fire_bullet_particle
    execute as 0-0-0-0-0 run function calc:set/random_rotation
    execute at 0-0-0-0-0 run function settings:enemy/skylands/ground/shoot/grimoire_zombie/fire_bullet_particle
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
