##############################
### 向き定義テスト
##############################

execute unless entity 0-0-0-0-0 run me function assert_manager:behaviour/reader/moves/repeater/continue/default 1t
execute unless entity 0-0-0-0-0 run schedule function assert_manager:behaviour/reader/moves/repeater/continue/default 1t

execute as 0-0-0-0-0 unless entity @s[tag=!Repeater.Continue] run say function assert_manager:behaviour/reader/moves/repeater/continue/default 1
execute as 0-0-0-0-0 unless entity @s[tag=Repeater.Break] run say function assert_manager:behaviour/reader/moves/repeater/continue/default 2

execute as 0-0-0-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:0l,UUIDLeast:0l,Tags:[Enemy]}
