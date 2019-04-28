##############################
### バニラ定義規定値テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/target/follow_range/default_mob 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/target/follow_range/default_mob 1t

execute as 0-0-0-0-0 unless score @s FollowRange matches 3500 run say function assert_manager:behaviour/reader/target/follow_range/default_mob 1
execute as 0-0-0-0-0 unless entity @s[nbt={Attributes:[{Name:"generic.followRange",Base:32.00d}]}] run say function assert_manager:behaviour/reader/target/follow_range/default_mob 2

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy]}
