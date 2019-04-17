##############################
### 向き定義テスト
##############################

execute unless entity 0-0-FF-0-0 run me function assert_manager:behaviour/reader/directions/interpolator/continue/false 1t
execute unless entity 0-0-FF-0-0 run schedule function assert_manager:behaviour/reader/directions/interpolator/continue/false 1t

execute as 0-0-FF-0-0 unless entity @s[tag=!IntrpDirContinue] run say function assert_manager:behaviour/reader/directions/interpolator/continue/false 1
execute as 0-0-FF-0-0 unless entity @s[tag=IntrpDirBreak] run say function assert_manager:behaviour/reader/directions/interpolator/continue/false 2

execute as 0-0-FF-0-0 run function finalization_manager:kill_immidiately
summon husk ~ ~ ~ {Team:Assert,UUIDMost:255l,UUIDLeast:0l,Tags:[Enemy],Passengers:[{id:item_frame,Tags:[Parameter],Item:{id:stone,Count:1b,tag:{DefineDirections:[{Interpolator:{Continue:false}}]}}}]}
