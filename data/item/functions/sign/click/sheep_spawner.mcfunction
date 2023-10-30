#> item:sign/click/sheep_spawner
#
# 羊スポナーの印判
#
# @private

# 設置
    summon minecraft:item_display ~ ~ ~ {Tags:[Spawner,SpawnerHolder],glow_color_override:-1,shadow_radius:0.0f,billboard:"fixed",shadow_strength:1.0f,width:0.0f,height: 0.0f,item_display:"none",view_range:1.0f,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f]},item:{id:"white_wool",Count:1b,tag:{Enchantments:[{}],Spawner:{SpawnCount:1s,SpawnRange:4s,MaxNearbyEntities:6s,Delay:-1s,MinSpawnDelay:10s,MaxSpawnDelay:30s,RequiredPlayerRange:20s,SpawnData:{entity:{id:"minecraft:sheep",Age:-100,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:100,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,01Woolscaffold,SpawnParticles],Level:1}]]}}]}},SpawnPotentials:[{weight:474,data:{entity:{id:"minecraft:sheep",Age:-100,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:100,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,01Woolscaffold,SpawnParticles],Level:1}]]}}]}}},{weight:3,data:{entity:{id:"minecraft:sheep",Age:-100,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:100,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,02Woolscaffold,SpawnParticles],Level:5}]]}}]}}},{weight:3,data:{entity:{id:"minecraft:sheep",Age:-100,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:100,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Neutrality,Blow,03Woolscaffold,SpawnParticles],Level:10}]]}}]}}}]},Count:99}}}

# 演出
    function makeup:item/sign/sheep_spawner

# 消滅
    setblock ~ ~ ~ minecraft:air