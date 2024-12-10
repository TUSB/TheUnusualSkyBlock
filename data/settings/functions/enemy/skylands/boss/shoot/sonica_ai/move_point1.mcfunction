#Function
# 移動先の指定
    function calc:geometry/tp_00000
    execute as 0-0-0-0-0 at @s facing entity @a[distance=..64,predicate=entity:player,limit=1] eyes run tp @s ^ ^ ^ ~ ~
    execute as 0-0-0-0-0 at @s unless block ~ ~ ~ #block:no_collision run function settings:enemy/skylands/boss/shoot/sonica_ai/move_point2
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos set from entity 0-0-0-0-0 Pos
# バグ対策を追加
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos set from entity @s Pos
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 滞空モーションOFF
    data modify entity @s Tags set from storage mob_data: Tags
    tag @s remove SkyMotion
    data modify storage mob_data: Tags set from entity @s Tags
