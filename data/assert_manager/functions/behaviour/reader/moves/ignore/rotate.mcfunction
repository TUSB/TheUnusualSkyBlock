##############################
### 動き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/moves/ignore/rotate 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/moves/ignore/rotate 1t

execute as 0-0-0-0-0 run function behaviour_manager:behaviour_applier/target/searcher/on_hit/common
execute as 0-0-0-0-0 run function behaviour_manager:behaviour_applier/action/repeater/check
execute as 0-0-0-0-0 unless entity @s[tag=Ignore.Rotate] run me function assert_manager:behaviour/reader/moves/ignore/rotate 1
execute as 0-0-0-0-0 unless entity @s[tag=!Ignore.Tilt] run me function assert_manager:behaviour/reader/moves/ignore/rotate 2

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{MoveSettingsList:[{Ignore:[Rotate]}]}}}]}
