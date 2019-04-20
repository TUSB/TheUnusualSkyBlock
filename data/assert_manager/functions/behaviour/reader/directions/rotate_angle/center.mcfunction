##############################
### 向き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/directions/rotate_angle/center 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/directions/rotate_angle/center 1t

execute as 0-0-0-0-0 unless score @s RotateAngle matches 1024 run say function assert_manager:behaviour/reader/directions/rotate_angle/center 1
execute as 0-0-0-0-0 unless score @s RotateAngle matches 1024 run tellraw @a {"score":{"name":"@s","objective":"RotateAngle"}}

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineMoves:[{RotateAngle:{Center:10.24d}}]}}}]}
