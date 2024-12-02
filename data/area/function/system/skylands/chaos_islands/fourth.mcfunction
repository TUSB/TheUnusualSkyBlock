#> area:system/skylands/chaos_islands/fourth
#
# 第四階層判定
#
# @private

# スポナーを全破壊することが条件
# クリスタルを召喚する
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos.004 unless entity @e[tag=Spawner,x=166,y=154,z=-988,dx=126,dy=28,dz=139] run summon armor_stand 226 318 -952 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Event,Blow,Crystal,SkyColor],Level:1}]]}}]}
    execute unless data storage main: difficult{world:"debug"} unless entity @e[tag=Spawner,x=166,y=154,z=-988,dx=126,dy=28,dz=139] run data modify storage main: System.Islands.Chaos.004 set value 1b
    execute unless data storage main: System.Islands.Chaos.004 run advancement revoke @s only area:system/skylands/chaos_islands/fourth
