#> area:system/skylands/chaos_islands/first
#
# 第一階層判定
#
# @private

# スポナーを全破壊することが条件
# クリスタルを召喚する
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos.001 unless entity @e[tag=Spawner,x=168,y=24,z=-976,dx=109,dy=42,dz=111] run summon armor_stand 226 318 -894 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1b,components:{"minecraft:custom_data":{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Event,Blow,Crystal,Red],Level:1}]]}}}]}
    execute unless data storage main: difficult{world:"debug"} unless entity @e[tag=Spawner,x=168,y=24,z=-976,dx=109,dy=42,dz=111] run data modify storage main: System.Islands.Chaos.001 set value 1b
    execute unless data storage main: System.Islands.Chaos.001 run advancement revoke @s only area:system/skylands/chaos_islands/first
