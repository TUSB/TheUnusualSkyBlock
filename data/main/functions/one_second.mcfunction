##############################
### １秒処理
##############################

### １秒エンティティ召喚
summon minecraft:area_effect_cloud ~0.5 0 ~0.5 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:block minecraft:air",Age:0,WaitTime:20,ReapplicationDelay:2147483647,Duration:0,UUIDMost:16L,UUIDLeast:16L}
setblock ~ 0 ~ minecraft:portal keep
summon minecraft:endermite ~0.5 0 ~0.5 {Lifetime:2394,Tags:[Initialized]}