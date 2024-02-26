#> enemy:natural_spawn_summon_vex
#
# Vexを召喚しておく
#
# @within function enemy:natural_spawn_condition

kill @s
summon vex ~ ~-1 ~ {Silent:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Health:0.01f,LifeTicks:200,Tags:["NaturalSpawn"],HandItems:[{},{}],Attributes:[{Name:"generic.max_health",Base:0.01d}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}]}
