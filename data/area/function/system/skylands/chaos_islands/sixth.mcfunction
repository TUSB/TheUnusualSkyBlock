#> area:system/skylands/chaos_islands/sixth
#
# 第六階層判定
#
# @private

# スポナーを全破壊することが条件
# クリスタルを召喚する
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos.006 unless entity @e[tag=Spawner,x=166,y=246,z=-995,dx=128,dy=48,dz=148] run summon armor_stand 202 318 -908 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1b,components:{"minecraft:custom_data":{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Event,Blow,Crystal,Pink],Level:1}]]}}}]}
    execute unless data storage main: difficult{world:"debug"} unless entity @e[tag=Spawner,x=166,y=246,z=-995,dx=128,dy=48,dz=148] run data modify storage main: System.Islands.Chaos.006 set value 1b
    execute unless data storage main: System.Islands.Chaos.006 run advancement revoke @s only area:system/skylands/chaos_islands/sixth
