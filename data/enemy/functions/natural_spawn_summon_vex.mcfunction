#> enemy:natural_spawn_summon_vex
#
# Vexを召喚しておく
#
# @within function enemy:natural_spawn_condition

kill @s
summon vex ~ ~-1 ~ {Silent:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Health:0.01f,LifeTicks:200,Tags:["NaturalSpawn"],HandItems:[{},{}],Attributes:[{Name:"generic.max_health",Base:0.01d}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
