function makeup:skill/enemy/casting/laser_pointer/red_dust/particle/red_dust


execute store result storage mob_data: ExecutingCast.Loop int 1 run data get storage mob_data: ExecutingCast.Loop 0.999999999
execute unless data storage mob_data: ExecutingCast{Loop:0} positioned ^ ^ ^0.5 if block ~ ~ ~ #main:no_collision run function skill:enemy/casting/act/execute/laser_pointer/red_dust/loop