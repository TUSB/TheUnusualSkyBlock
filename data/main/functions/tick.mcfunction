##############################
### 毎ティック処理
##############################

###パーティクル表示判定
function main:particle/update_tag

### 1tick遅れ処理
execute as @e[tag=DelayedTask] at @s run function main:task/delayed

### プレイヤーtick
execute as @a at @s run function player:tick

### スポナーカート空気時処理
execute as @e[tag=SpawnerHolder] at @s if block ~ ~ ~ minecraft:air run function enemy:break_spawner/

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### 召喚済み単回スポナー削除
kill @e[tag=OneTimeSpawner,nbt={SpawnData:{entity:{id:"tusb_mob:empty"}}}]

### 1秒処理
scoreboard players add $Tick Count 1
execute if score $Tick Count matches 20.. run function main:one_second

### エンティティAI分岐
execute as @e[tag=HasAI] at @s run function enemy:ai/tick

### 存在する限り毎tick処理呼び出し
execute as @e[scores={NativeFlag=1..}] at @s run function main:task/native

### Mob tick
execute as @e[tag=Mob] at @s run function enemy:tick

### エンティティPortalCooldownチェック
execute as @e[tag=CooldownRequired,nbt={PortalCooldown:0}] at @s run function entity:cooldown

### エンティティ削除
execute as @e[tag=Garbage] run function entity:garbage_collection
