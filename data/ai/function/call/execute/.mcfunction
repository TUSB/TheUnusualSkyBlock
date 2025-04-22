#> ai:call/execute/
#先頭にGlobal Settingsあれば適用
execute unless data storage mob_data: CallList[0].Settings[{Global:1b}] run function ai:call/execute/fork
execute if data storage mob_data: CallList[0].Settings[{Global:1b}] run function ai:call/execute/apply_global_settings
