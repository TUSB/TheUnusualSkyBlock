#> makeup:skill/act/hunter/wild_healing/eat
#
# ワイルドヒーリング食事時演出

playsound minecraft:entity.parrot.imitate.ender_dragon player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup player @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:heart ~ ~ ~ 0.8 0.2 0.8 1 10 force
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:{type:"minecraft:entity_effect",color:16731405},Radius:1.5f,Duration:15}
