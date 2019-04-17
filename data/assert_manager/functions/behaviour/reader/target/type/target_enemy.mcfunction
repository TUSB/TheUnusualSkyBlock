##############################
### ターゲット定義テスト
##############################

execute unless entity 0-0-FF-0-0 run me function assert_manager:behaviour/reader/target/type/target_enemy 1t
execute unless entity 0-0-FF-0-0 run schedule function assert_manager:behaviour/reader/target/type/target_enemy 1t

execute as 0-0-FF-0-0 unless entity @s[tag=TargetType.TargetEnemy] run say function assert_manager:behaviour/reader/target/type/target_enemy 1
execute as 0-0-FF-0-0 unless entity @s[tag=UseTarget] run say function assert_manager:behaviour/reader/target/type/target_enemy 2

execute as 0-0-FF-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:255l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineTarget:{TargetType:TargetEnemy}}}}]}
