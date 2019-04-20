##############################
### 向き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/directions/target_offset/set_xyz 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/directions/target_offset/set_xyz 1t

execute as 0-0-0-0-0 unless score @s TargetOffsetX matches 128 run say function assert_manager:behaviour/reader/directions/target_offset/set_xyz 1
execute as 0-0-0-0-0 unless score @s TargetOffsetY matches 256 run say function assert_manager:behaviour/reader/directions/target_offset/set_xyz 2
execute as 0-0-0-0-0 unless score @s TargetOffsetZ matches 512 run say function assert_manager:behaviour/reader/directions/target_offset/set_xyz 3

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineMoves:[{TargetOffset:{X:1.28d,Y:2.56d,Z:5.12d}}]}}}]}
