#> ai:call/settings/init
# Settingsのマクロ記述分岐

execute if data storage mob_data: Call.Settings[0].SubCommand run return run function ai:call/settings/macro/check
function ai:call/settings/init_old
