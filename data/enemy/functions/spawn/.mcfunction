###################################################
# カスタムスポナーから湧いた村人に対して実行される
# カスタムモブを召喚する
###################################################

### LevelとPosとRotation取得
scoreboard players operation _ Level = @s Level
data modify storage tusb_mob: Pos set from entity @s Pos
data modify storage tusb_mob: Rotation set from entity @s Rotation
data modify storage tusb_mob: Count set from entity @s ArmorItems[3].tag.Count
### 例えば、村人が複数のタグを持っていたら？
### タグで判定するとしても、リストで保持しておいて、タグに移してから反映とかの方がいいかも
data modify storage tusb_mob: MobLayers set from entity @s ArmorItems[3].tag.SpawnEntities
### スポナートロッコ召喚
summon spawner_minecart ~ ~500 ~ {Tags:[OneTimeSpawner,TickingRequired],SpawnCount:1s,SpawnRange:6s,Delay:0s,MaxNearbyEntities:106s,RequiredPlayerRange:1000s,MinSpawnDelay:200s,MaxSpawnDelay:800s,SpawnData:{entity:{id:"minecraft:experience_orb",Age:6000,Passengers:[{id:"tusb_mob:creation"}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"tusb_mob:empty"}}}]}
### ステータス適用
execute positioned ~ ~500 ~ as @e[type=spawner_minecart,distance=..0.01] if data entity @s SpawnData.entity.Passengers[{id:"tusb_mob:creation"}] positioned ~ ~-500 ~ run function enemy:spawn/set_spawner/
### Count設定
execute if data entity @s ArmorItems[3].tag.Count positioned ~ ~500 ~ run data modify entity @e[type=spawner_minecart,limit=1,distance=..0.01] SpawnCount set from entity @s ArmorItems[3].tag.Count
execute if data entity @s ArmorItems[3].tag.Count run function enemy:spawn/set_spawner/count/

kill @s
