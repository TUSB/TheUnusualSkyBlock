##############################
### バニラ定義規定値テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/target/follow_range/custom_bullet 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/target/follow_range/custom_bullet 1t

execute as 0-0-0-0-0 unless score @s FollowRange matches 32768 run say function assert_manager:behaviour/reader/target/follow_range/custom_bullet 1
execute as 0-0-0-0-0 unless entity @s[nbt={Attributes:[{Name:"generic.followRange",Base:327.68d}]}] run say function assert_manager:behaviour/reader/target/follow_range/custom_bullet 2

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy,Bullet],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{TargetSettings:{FollowRange:327.68d}}}}]}
