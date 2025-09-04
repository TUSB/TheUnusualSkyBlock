#> ai:call/settings/macro/check

# 空白チェック
execute store result score _ _ run data get storage mob_data: Call.Settings[0].SubCommand
data modify storage mob_data: _ set value {Space:" "}
execute if score _ _ matches 0 run data modify storage mob_data: _.Space set value ""

data modify storage mob_data: _ merge from storage mob_data: Call.Settings[0]

# 実行
function ai:call/settings/macro/run.macro with storage mob_data: _
