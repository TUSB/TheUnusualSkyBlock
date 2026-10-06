#> player:burst/break/damage/spawner/

execute store result score _ _ run data get storage tusb_player: burst_config.burst_break.spawner_damage

execute if data storage main: difficult{world:"picnic"} as @e[tag=Spawner,distance=..32] at @s run function player:burst/break/damage/spawner/once
execute if data storage main: difficult{world:"casual"} as @e[tag=Spawner,distance=..48] at @s run function player:burst/break/damage/spawner/once
execute if data storage main: difficult{world:"expart"} as @e[tag=Spawner,distance=..64] at @s run function player:burst/break/damage/spawner/once
execute if data storage main: difficult{world:"debug"} as @e[tag=Spawner,distance=..48] at @s run function player:burst/break/damage/spawner/once
