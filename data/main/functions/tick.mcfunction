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
execute as @e[tag=SpawnerHolder] at @s unless block ~ ~ ~ minecraft:spawner run function enemy:break_spawner/

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

### 通常世界脅威島 チェストの上の石は壊れない
execute in area:skylands positioned 39 6 -557 if entity @a[distance=..10] if block 39 7 -556 air if block 39 6 -556 chest run setblock 39 7 -556 smooth_stone

### バースト処理
execute if score $World Burst matches -1 run function skill:burst/condition
