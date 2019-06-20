##############################
### ステータス定義規定値テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/status/follow_range/custom_mob 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/status/follow_range/custom_mob 1t

execute as 0-0-0-0-0 unless score @s LifeTime matches 123 run me function assert_manager:behaviour/reader/status/follow_range/custom_mob 1

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{StatusSettings:{LifeTime:1.23d}}}}]}
