###ohmydat確認
function oh_my_dat:please
###List移行
data modify storage mob_data: Casting set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting
###ListSizeGet "_ _"
scoreboard players set _ _ 0
execute store result score _ _ run data get storage mob_data: Casting
###LoopCountSet "_ Calc"
scoreboard players set _ Calc 1
###Loop
execute if data storage mob_data: Casting[0] run function skill:enemy/casting/act/check/loop
###削除予定の要素を削除
data remove storage mob_data: Casting[{Delete:1b}]
###Castingのソートをする
###Executed:1bのついた要素だけ位置を調整する
execute if data storage mob_data: Casting[0] run function skill:enemy/casting/act/sort/
###次の詠唱Tick更新
execute if data storage mob_data: Casting[0] store result score @s NextCastingTick run data get storage mob_data: Casting[0].NextAction
execute unless data storage mob_data: Casting[0] run scoreboard players reset @s NextCastingTick
scoreboard players reset @s CastingTick
###Ohmydatに保存
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting set from storage mob_data: Casting

###一時的処理を継続するかどうか
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Casting[0] run scoreboard players set 00000000-0000-0000-0000-000000000000 _ 0


###一時的に保存したデータの破棄
data remove storage mob_data: Casting
data remove storage mob_data: SortingCastingData
data remove storage mob_data: ExecutingCast