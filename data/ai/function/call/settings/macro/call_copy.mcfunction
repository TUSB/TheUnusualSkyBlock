#> ai:call/settings/macro/call_copy

# 元実行者以外かつUnmovedなら処理除外タグを付与
execute store result score _ _ run data get storage mob_data: CallCopy[-1].ExecuteEntity
execute if entity @s[tag=Unmoved] unless score @s OhMyDatID = _ _ run tag @s add TargetChanged

# 使用Callコピー リスト形式ならGlobalでの処理
execute if data storage mob_data: CallCopy[-1]._[0] run data modify storage mob_data: CallList set from storage mob_data: CallCopy[-1]._
execute unless data storage mob_data: CallCopy[-1]._[0] run data modify storage mob_data: Call set from storage mob_data: CallCopy[-1]._

execute if data storage mob_data: CallCopy[-1]._[0] run function ai:call/execute/fork
execute unless data storage mob_data: CallCopy[-1]._[0] run function ai:call/call with storage mob_data: Call

tag @s[tag=TargetChanged] remove TargetChanged
