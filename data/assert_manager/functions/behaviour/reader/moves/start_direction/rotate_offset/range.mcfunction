##############################
### 向き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/range 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/range 1t

execute as 0-0-0-0-0 unless score @s RotateOffset matches -1024..1024 run say function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/range 1
execute as 0-0-0-0-0 if score @s RotateOffset matches 0 run say function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/range 2?

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineMoves:[{StartDirection:{RotateOffset:{Range:10.24d}}}]}}}]}
