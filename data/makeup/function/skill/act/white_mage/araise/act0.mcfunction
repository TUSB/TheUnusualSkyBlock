#> makeup:skill/act/white_mage/araise/act0
#
# リレイズ効果付与演出
execute as @a[distance=..10] run tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"リレイズ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"死亡時にレイズの効果を得る。","color":"white"}}}]}]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:entity_effect,color:[1.00,0.97,0.00,1.00]},ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.05f,Duration:50}
particle minecraft:end_rod ~ ~1.5 ~ 0.2 1.5 0.2 0 100 force
particle minecraft:end_rod ~ ~3 ~ 1 0.2 0 0 50 force
particle minecraft:end_rod ~ ~3 ~ 0 0.2 1 0 50 force
playsound minecraft:entity.firework_rocket.launch player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.player.levelup player @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:entity.player.levelup player @a[distance=..16] ~ ~ ~ 1 1.6
