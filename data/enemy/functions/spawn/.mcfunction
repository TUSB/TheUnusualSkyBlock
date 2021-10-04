###################################################
# カスタムスポナーから湧いた村人に対して実行される
# カスタムモブを召喚する
###################################################

### PosとRotation取得
data modify storage tusb_mob: Pos set from entity @s Pos
data modify storage tusb_mob: Rotation set from entity @s Rotation
### 例えば、村人が複数のタグを持っていたら？
### タグで判定するとしても、リストで保持しておいて、タグに移してから反映とかの方がいいかも
data modify storage tusb_mob: MobLayers set from entity @s ArmorItems[0].tag.SpawnEntities
### スポナートロッコ召喚
summon spawner_minecart ~ ~500 ~ {Tags:[OneTimeSpawner],SpawnCount:1s,SpawnRange:6s,Delay:0s,MaxNearbyEntities:106s,RequiredPlayerRange:1000s,MinSpawnDelay:200s,MaxSpawnDelay:800s,SpawnData:{id:"minecraft:experience_orb",Age:6000s,Passengers:[{id:"minecraft:experience_orb"}]},SpawnPotentials:[{Weight:1,Entity:{id:"tusb_mob:empty"}}]}
### ステータス適用
execute positioned ~ ~500 ~ as @e[type=spawner_minecart,limit=1,distance=..0.01] run function enemy:spawn/set_spawner/

kill @s
