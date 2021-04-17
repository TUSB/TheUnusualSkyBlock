##############################
### 毎ティック処理
##############################

###トリガー
execute as @a[scores={UseSnowball=1..}] at @s run function player:trigger/use/snowball
execute as @a[scores={UseBow=1..}] at @s run function player:trigger/use/bow
execute as @a[scores={UseCrossbow=1..}] at @s run function player:trigger/use/crossbow
execute as @a[scores={UseTrident=1..}] at @s run function player:trigger/use/trident

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### スポナーカート空気時削除
execute as @e[tag=SpawnerHolder] at @s if block ~ ~ ~ minecraft:air align xyz run tag @e[dy=0,tag=Spawner] add Garbage

### 召喚済み単回スポナー削除
kill @e[tag=OneTimeSpawner,nbt={SpawnData:{id:"tusb_mob:empty"}}]

###１秒処理
scoreboard players add $Second Count 1
execute if score $Second Count matches 21.. run function main:one_second

###Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run function entity:enemy/update_health
execute as @e[tag=Mob,scores={Damage=1..}] run function entity:enemy/update_health

###エンティティ削除
execute as @e[tag=Garbage] run function entity:garbage_collection

###カスタムHP回復
execute as @a[scores={HealthHealing=-2147483648..}] run function player:health_healing
