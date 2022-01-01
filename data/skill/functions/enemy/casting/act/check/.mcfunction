###ohmydat確認
function oh_my_dat:please
###List移行
data remove storage mob_data: Casting
data modify storage mob_data: Casting set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting
###ListSize
execute store result score _ _ run data get storage mob_data: Casting
###LoopCountSet
scoreboard players set _ Calc 1
###Loop
function skill:enemy/casting/act/check/loop
###削除予定の要素を削除
data remove storage mob_data: Casting[{Delete:1b}]
###次の詠唱Tick更新
execute if data storage mob_data: Casting[0] store result score @s NextCastingTick run data get storage mob_data: Casting[0].NextAction
execute unless data storage mob_data: Casting[0] run scoreboard players reset @s NextCastingTick
scoreboard players reset @s CastingTick
###Ohmydatに保存
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting set from storage mob_data: Casting