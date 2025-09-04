#> ai:call/settings/macro/run.macro
$execute unless data storage mob_data: _{Global:1b} $(SubCommand)$(Space)run function ai:call/call
$execute if data storage mob_data: _{Global:1b} $(SubCommand)$(Space)run function ai:call/execute/fork
