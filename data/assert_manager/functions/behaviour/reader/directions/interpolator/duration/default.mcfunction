##############################
### 向き定義テスト
##############################

execute unless entity 0-0-FF-0-0 run me function assert_manager:behaviour/reader/directions/interpolator/duration/default 1t
execute unless entity 0-0-FF-0-0 run schedule function assert_manager:behaviour/reader/directions/interpolator/duration/default 1t

execute as 0-0-FF-0-0 unless score @s IntrpDirDuration matches 1000000 run say function assert_manager:behaviour/reader/directions/interpolator/duration/default 1

execute as 0-0-FF-0-0 unless score @s IntrpDirDuration matches 1000000 run tellraw @a {"score":{"name":"@s","objective":"IntrpDirDuration"}}

execute as 0-0-FF-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:255l,UUIDLeast:0l,Tags:[Enemy]}
