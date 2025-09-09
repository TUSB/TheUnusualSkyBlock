#> ai:call/settings/macro/call_copy

# 使用Callコピー リスト形式ならGlobalでの処理
execute if data storage mob_data: CallCopy[-1]._[0] run data modify storage mob_data: CallList set from storage mob_data: CallCopy[-1]._
execute unless data storage mob_data: CallCopy[-1]._[0] run data modify storage mob_data: Call set from storage mob_data: CallCopy[-1]._

execute if data storage mob_data: CallCopy[-1]._[0] run function ai:call/execute/fork
execute unless data storage mob_data: CallCopy[-1]._[0] run function ai:call/call
