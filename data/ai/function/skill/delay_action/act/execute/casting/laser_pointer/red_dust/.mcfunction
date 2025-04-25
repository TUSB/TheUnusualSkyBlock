###演出
execute if data storage mob_data: ExecutingAction.ExtraSettings.Loop anchored eyes positioned ^ ^ ^ run function skill:enemy/delay_action/act/execute/casting/laser_pointer/red_dust/loop_start
data modify storage mob_data: ExecutingAction.NextAction set value 2