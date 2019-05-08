##############################
### 動き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/moves/upward/speed_min/default 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/moves/upward/speed_min/default 1t

execute as 0-0-0-0-0 unless score @s UpwardSpeedMin matches -100000 run say function assert_manager:behaviour/reader/moves/upward/speed_min/default 1

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy]}
