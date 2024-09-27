#> area:system/skylands/chaos_islands/second
#
# 第二階層判定
#
# @private

# ボススポナーを全破壊することが条件
# クリスタルを召喚する
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos.002 unless entity @e[tag=Spawner,x=259,y=95,z=-894,dx=0,dy=0,dz=0] unless entity @e[tag=Spawner,x=188,y=93,z=-923,dx=0,dy=0,dz=0] unless entity @e[tag=Spawner,x=243,y=95,z=-957,dx=0,dy=0,dz=0] run summon armor_stand 250 318 -908 {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Event,Blow,Crystal,Yellow],Level:1}]]}}]}
    execute unless data storage main: difficult{world:"debug"} unless entity @e[tag=Spawner,x=259,y=95,z=-894,dx=0,dy=0,dz=0] unless entity @e[tag=Spawner,x=188,y=93,z=-923,dx=0,dy=0,dz=0] unless entity @e[tag=Spawner,x=243,y=95,z=-957,dx=0,dy=0,dz=0] run data modify storage main: System.Islands.Chaos.002 set value 1b
    execute unless data storage main: System.Islands.Chaos.002 run advancement revoke @s only area:system/skylands/chaos_islands/second