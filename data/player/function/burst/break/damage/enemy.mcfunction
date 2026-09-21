#> player:burst/break/damage/enemy

data modify storage entity: damage set from storage tusb_player: burst_config.burst_break.enemy_damage

execute if data storage main: difficult{world:"picnic"} as @e[tag=Enemy,distance=..64] at @s run function entity:damage/apply/
execute if data storage main: difficult{world:"casual"} as @e[tag=Enemy,distance=..48] at @s run function entity:damage/apply/
execute if data storage main: difficult{world:"expart"} as @e[tag=Enemy,distance=..32] at @s run function entity:damage/apply/
execute if data storage main: difficult{world:"debug"} as @e[tag=Enemy,distance=..48] at @s run function entity:damage/apply/
