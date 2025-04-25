###詠唱演出 Stage0で終了なので最大数から開始
function calc:geometry/tp_00000
execute store result score _ Random run function calc:random
execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run scoreboard players get _ Random
execute store result score _ Random run function calc:random
execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run scoreboard players get _ Random
execute if data storage mob_data: ExecutingAction{Stage:25} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_01
execute if data storage mob_data: ExecutingAction{Stage:24} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_02
execute if data storage mob_data: ExecutingAction{Stage:23} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_03
execute if data storage mob_data: ExecutingAction{Stage:22} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_04
execute if data storage mob_data: ExecutingAction{Stage:21} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_05
execute if data storage mob_data: ExecutingAction{Stage:20} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_06
execute if data storage mob_data: ExecutingAction{Stage:19} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_07
execute if data storage mob_data: ExecutingAction{Stage:18} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_08
execute if data storage mob_data: ExecutingAction{Stage:17} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_09
execute if data storage mob_data: ExecutingAction{Stage:16} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_10
execute if data storage mob_data: ExecutingAction{Stage:15} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_11
execute if data storage mob_data: ExecutingAction{Stage:14} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_12
execute if data storage mob_data: ExecutingAction{Stage:13} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_13
execute if data storage mob_data: ExecutingAction{Stage:12} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_14
execute if data storage mob_data: ExecutingAction{Stage:11} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_15
execute if data storage mob_data: ExecutingAction{Stage:10} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_16
execute if data storage mob_data: ExecutingAction{Stage:9} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_17
execute if data storage mob_data: ExecutingAction{Stage:8} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_18
execute if data storage mob_data: ExecutingAction{Stage:7} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_19
execute if data storage mob_data: ExecutingAction{Stage:6} at 0-0-0-0-0 run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb_20
execute if data storage mob_data: ExecutingAction{Stage:6} run data modify storage mob_data: ExecutingAction.NextAction set value 10
execute as 0-0-0-0-0 run function calc:geometry/return_marker
execute if data storage mob_data: ExecutingAction{Stage:5} run data modify storage mob_data: ExecutingAction.NextAction set value 1
execute if data storage mob_data: ExecutingAction{Stage:5} run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb2_01
execute if data storage mob_data: ExecutingAction{Stage:4} run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb2_02
execute if data storage mob_data: ExecutingAction{Stage:3} run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb2_03
execute if data storage mob_data: ExecutingAction{Stage:2} run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb2_04
execute if data storage mob_data: ExecutingAction{Stage:1} run function makeup:skill/enemy/delay_action/casting/doom_bomb/doom_bomb2_05