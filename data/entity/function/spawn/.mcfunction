#> entity:spawn/
###################################################
# Spawnタグを持ったエンティティに対して実行される
# カスタムモブを召喚する
###################################################

### LevelとPosとRotation取得
scoreboard players operation _ Level = @s Level
execute store success score _ _ run data modify storage tusb_mob: Pos.before set from entity @s Pos
function entity:spawn/correction_pos/
data modify storage tusb_mob: Rotation set from entity @s Rotation
data modify storage tusb_mob: Count set from entity @s ArmorItems[3].components."minecraft:custom_data".Count
### 例えば、村人が複数のタグを持っていたら？
### タグで判定するとしても、リストで保持しておいて、タグに移してから反映とかの方がいいかも
data modify storage tusb_mob: MobLayers set from entity @s ArmorItems[3].components."minecraft:custom_data".SpawnEntities
### スポナートロッコ召喚
summon spawner_minecart ~ ~500 ~ {Tags:[OneTimeSpawner,TickingRequired],SpawnCount:1s,SpawnRange:6s,Delay:0s,MaxNearbyEntities:106s,RequiredPlayerRange:1000s,MinSpawnDelay:200s,MaxSpawnDelay:800s,NoGravity:1b,SpawnData:{entity:{id:"minecraft:experience_orb",Tags:["NotTriggerCallPassenger"],Age:6000,Passengers:[{id:"tusb_mob:creation"}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"tusb_mob:empty"}}}]}
### ステータス適用
execute positioned ~ ~500 ~ as @e[type=spawner_minecart,distance=..0.01] if data entity @s SpawnData.entity.Passengers[{id:"tusb_mob:creation"}] positioned ~ ~-500 ~ run function entity:spawn/set_spawner/
### Count設定
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".Count positioned ~ ~500 ~ run data modify entity @e[type=spawner_minecart,limit=1,distance=..0.01,tag=Runner] SpawnCount set from entity @s ArmorItems[3].components."minecraft:custom_data".Count
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".Count run function entity:spawn/set_spawner/count/

execute positioned ~ ~500 ~ run tag @e[type=spawner_minecart,limit=1,distance=..0.01] remove Runner
data remove entity @s CustomName
kill @s
