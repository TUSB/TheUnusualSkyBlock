function makeup:skill/enemy/delay_action/casting/laser_pointer/red_dust/particle/red_dust


execute store result storage mob_data: ExecutingAction.Loop int 1 run data get storage mob_data: ExecutingAction.Loop 0.999999999
execute unless data storage mob_data: ExecutingAction{Loop:0} positioned ^ ^ ^0.5 if block ~ ~ ~ #block:no_collision run function skill:enemy/delay_action/act/execute/casting/laser_pointer/red_dust/loop