##############################
### 向き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/directions/repeater/to_start/set 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/directions/repeater/to_start/set 1t

execute as 0-0-0-0-0 unless score @s RepeaterDelay matches 32768..32868 run say function assert_manager:behaviour/reader/directions/repeater/to_start/set 1
execute as 0-0-0-0-0 if score @s RepeaterDelay matches 32768 run say function assert_manager:behaviour/reader/directions/repeater/to_start/set 2?

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineMoves:[{Interpolator:{Start:327.68d,RandomDelay:1.00d}}]}}}]}
