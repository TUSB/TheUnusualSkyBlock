##############################
### 向き定義テスト
##############################

execute unless entity 0-0-FF-0-0 run me function assert_manager:behaviour/reader/directions/rotate_speed/default 1t
execute unless entity 0-0-FF-0-0 run schedule function assert_manager:behaviour/reader/directions/rotate_speed/default 1t

execute as 0-0-FF-0-0 unless score @s RotateSpeed matches 180 run say function assert_manager:behaviour/reader/directions/rotate_speed/default 1

execute as 0-0-FF-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:255l,UUIDLeast:0l,Tags:[Enemy]}
