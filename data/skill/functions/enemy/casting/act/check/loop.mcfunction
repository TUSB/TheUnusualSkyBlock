###NextAction更新 "@s _"
scoreboard players set @s _ 0
execute store result score @s _ run data get storage mob_data: Casting[0].NextAction
scoreboard players operation @s _ -= @s CastingTick
###Data移動
data modify storage mob_data: ExecutingCast set from storage mob_data: Casting[0]
###Execute
execute if score @s _ matches ..0 run function skill:enemy/casting/act/execute/
###Dataを戻す
data modify storage mob_data: Casting[0] set from storage mob_data: ExecutingCast
data remove storage mob_data: ExecutingCast
###Shift
scoreboard players add _ Calc 1
execute if score _ Calc < _ _ run function skill:enemy/casting/act/check/shift
###Loop
execute if score _ Calc <= _ _ run function skill:enemy/casting/act/check/loop