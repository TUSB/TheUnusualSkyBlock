## 通常世界 脅威島

# チェストを壊すとなぜかサトウキビが崩れる
execute unless block 39 6 -557 air if block 39 6 -556 air run setblock 39 6 -557 air destroy

# サトウキビの頂点が無ければ脅威召喚
execute unless data storage main: difficult{world:"debug"} if block 39 318 -557 air positioned as @a[limit=1,sort=nearest] run summon spawner_minecart 2 26 -612 {Tags:[OneTimeSpawner,TickingRequired],Delay:0s,MaxSpawnDelay:32000s,MinSpawnDelay:32000s,SpawnCount:200s,SpawnRange:64s,MaxNearbyEntities:300s,RequiredPlayerRange:1200s,SpawnData:{custom_spawn_rules:{block_light_limit:[0,15],sky_light_limit:[0,15]},entity:{id:"minecraft:falling_block",DropItem:false,HurtEntities:false,Time:0,BlockState:{Name:"minecraft:fire"}}},SpawnPotentials:[{weight:1,data:{entity:{id:"tusb_mob:empty"}}}]}
execute unless data storage main: difficult{world:"debug"} if block 39 318 -557 air run setblock -3 318 -598 lava
execute if block 39 318 -557 air run tellraw @a {"translate":"封印は解かれた！今より半刻後、天よりかつての脅威が舞い降り、白き羊を赤く染め上げるだろう！","color":"red","bold":true,"italic":true}

# 脅威lock
execute if block 39 318 -557 air run setblock 39 318 -557 light[level=0]
