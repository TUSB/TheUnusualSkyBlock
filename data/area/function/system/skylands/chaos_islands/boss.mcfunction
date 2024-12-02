#> area:system/skylands/chaos_islands/boss
#
# ボス召喚
#
# @within advancement area:system/skylands/chaos_islands/boss

# ボス召喚
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos{007:1b} if data storage main: System.Islands.Chaos{001:1b,002:1b,003:1b,004:1b,005:1b,006:1b} run summon armor_stand 226 311.25 -923 {UUID:[I;100,0,0,1],Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1b,components:{"minecraft:custom_data":{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaMarker,Main],Level:150}]]}}}]}
    execute unless data storage main: System.Islands.Chaos{007:1b} run advancement revoke @s only area:system/skylands/chaos_islands/boss
