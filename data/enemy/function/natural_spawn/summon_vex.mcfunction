#> enemy:natural_spawn/summon_vex
#
# Vexを召喚しておく
#
# @within function enemy:natural_spawn/condition

kill @s
summon vex ~ ~-1 ~ {Silent:1b,DeathTime:19,DeathLootTable:"",NoAI:1b,Health:0.01f,LifeTicks:200,Tags:["NaturalSpawn"],HandItems:[{},{}],attributes:[{id:"max_health",base:0.01d}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
