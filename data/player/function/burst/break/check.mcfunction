#> player:burst/break/check

execute store result score _ _ run data get storage tusb_player: burst_config.require_burst
execute if score @s Burst >= _ _ run return 1
return 0
