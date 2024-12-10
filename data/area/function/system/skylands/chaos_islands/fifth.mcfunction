#> area:system/skylands/chaos_islands/fifth
#
# 第五階層判定
#
# @within advancement area:system/skylands/chaos_islands/fifth

# ボススポナーを破壊してボスに勝つことが条件
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos.005 unless entity @e[tag=Spawner,x=223,y=224,z=-894,dx=0,dy=0,dz=0] unless entity @e[tag=CherryTree] positioned 223 235 -901 run function makeup:area/system/skylands/chaos_islands/fifth
    execute unless data storage main: difficult{world:"debug"} unless data storage main: System.Islands.Chaos.005 unless entity @e[tag=Spawner,x=223,y=224,z=-894,dx=0,dy=0,dz=0] unless entity @e[tag=CherryTree] run summon armor_stand 223 235 -901 {Tags:[Spawn,CherryTree],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1b,components:{"minecraft:custom_data":{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Shoot,AngryCherryTree,Main,SpawnParticles],Level:111}],[{Tags:[Global,Event,Function,Avoid,Main],Level:111}]]}}}]}
    execute unless data storage main: System.Islands.Chaos{005:1b} run advancement revoke @s only area:system/skylands/chaos_islands/fifth
