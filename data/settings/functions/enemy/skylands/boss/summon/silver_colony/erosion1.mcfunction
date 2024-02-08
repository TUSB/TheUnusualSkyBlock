#Function
# ループ処理の準備
    scoreboard players set # _ 0
    scoreboard players set # Calc 0
# Markerを召喚する
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run function calc:geometry/tp_00000
# ループ処理
    function settings:enemy/skylands/boss/summon/silver_colony/erosion1_loop
    execute if score # Calc matches 1 at 0-0-0-0-0 run function settings:enemy/skylands/boss/summon/silver_colony/erosion2
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# Successしてない場合はループする
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Loop int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Loop
    execute unless entity @s[tag=Success] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI{Loop:0} run function settings:enemy/skylands/boss/summon/silver_colony/erosion1
