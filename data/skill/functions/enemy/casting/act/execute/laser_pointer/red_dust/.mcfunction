###演出
execute if data storage mob_data: ExecutingCast.ExtraSettings.Loop anchored eyes positioned ^ ^ ^ run function skill:enemy/casting/act/execute/laser_pointer/red_dust/loop_start
data modify storage mob_data: ExecutingCast.NextAction set value 2