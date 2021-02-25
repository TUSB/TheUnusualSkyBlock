##############################
### 毎ティック処理
##############################

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### スポナーカート空気時削除
execute as @e[tag=SpawnerHolder] at @s if block ~ ~ ~ minecraft:air align xyz run tag @e[dy=0,tag=Spawner] add Garbage

### 召喚済み単回スポナー削除
kill @e[tag=OneTimeSpawner,nbt={SpawnData:{id:"tusb_mob:empty"}}]

###１秒処理
scoreboard players add $Second Count 1
execute if score $Second Count matches 21.. run function main:one_second

##エンティティ削除
execute as @e[tag=Garbage] run function entity:garbage_collection