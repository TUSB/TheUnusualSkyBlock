##############################
### １秒処理
##############################

#### １秒エンティティ召喚
#summon minecraft:area_effect_cloud ~0.5 0 ~0.5 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:block minecraft:air",Age:0,WaitTime:20,ReapplicationDelay:2147483647,Duration:0,UUIDMost:16L,UUIDLeast:16L,Tags:[Initialized]}
#setblock ~ 0 ~ minecraft:portal keep
##summon minecraft:item ~0.5 0.5 ~0.5 {Item:{id:"minecraft:stone",Count:1b},Age:5997s,Tags:[Initialized]}
scoreboard players set $Second Count 0

###パペット行動
execute as @a[tag=WithPuppet] run function puppet_manager:calc_and_act

### 死の宣告処理
execute as @a[scores={DoomCount=1..}] run function effect_manager:doom

### トカルト処理
scoreboard players remove @a[scores={Dimension=16}] TorchCount 1
execute as @a[scores={TorchCount=..0}] run function item_manager:tocult_torch

### 停止飛翔物削除
execute as @e[tag=Projectile] run function entity_manager:check_projectile_freeze

### デスポーンしない敵デスポーン処理
execute as @e[tag=Mob,tag=!Animal,nbt=!{PersistenceRequired:true}] at @s unless entity @a[distance=..128] run tag @s add Garbage

### スポナーカート処理
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run kill @s
execute as @e[type=minecraft:spawner_minecart] at @s positioned ~-0.001 ~-0.001 ~-0.001 unless entity @e[dx=0.002,dy=0.002,dz=0.002,nbt={Passengers:[{}]},limit=1] run tag @s add Garbage

### ブロック設置敵処理
execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep
execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

### １分処理呼び出し
scoreboard players add $Second Count 1
execute if score $Second Count matches 60 run function main:one_minute

### イベント演出戻し処理
execute if score $Second Count matches -1 run function event_manager:reset_event

### スキル変更不可時間更新
scoreboard players remove @a ChangeSkillLimit 1

### ダークスワンプパーティクル表示
execute at @e[tag=DarkSwamp,sort=random,limit=3] run particle minecraft:squid_ink ~ ~ ~ 1.5 0.2 1.5 0 50
