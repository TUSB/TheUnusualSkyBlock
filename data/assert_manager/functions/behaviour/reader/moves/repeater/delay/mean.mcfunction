##############################
### 向き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/moves/repeater/delay/mean 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/moves/repeater/delay/mean 1t

execute as 0-0-0-0-0 unless score @s RepeaterDelay matches 1024 run say function assert_manager:behaviour/reader/moves/repeater/delay/mean 1
execute as 0-0-0-0-0 unless score @s RepeaterToStart matches 1024 run say function assert_manager:behaviour/reader/moves/repeater/delay/mean 2

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineMoves:[{Repeater:{Delay:{Mean:10.24d}}}]}}}]}
