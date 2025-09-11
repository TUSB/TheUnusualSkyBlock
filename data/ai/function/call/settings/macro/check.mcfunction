#> ai:call/settings/macro/check

# 空白チェック
execute store result score _ _ run data get storage mob_data: Call.Settings[0].SubCommand
data modify storage mob_data: _ set value {Space:" "}
execute if score _ _ matches 0 run data modify storage mob_data: _.Space set value ""

data modify storage mob_data: _ merge from storage mob_data: Call.Settings[0]

# 使用Callコピー
data modify storage mob_data: CallCopy append value {}
execute if data storage mob_data: _{Global:1b} run data modify storage mob_data: CallCopy[-1]._ set from storage mob_data: CallList
execute unless data storage mob_data: _{Global:1b} run data modify storage mob_data: CallCopy[-1]._ set from storage mob_data: Call

# 実行
function ai:call/settings/macro/run.macro with storage mob_data: _

data remove storage mob_data: CallCopy[-1]
execute unless data storage mob_data: CallCopy[0] run data remove storage mob_data: CallCopy
