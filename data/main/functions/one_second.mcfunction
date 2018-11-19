##############################
### １秒処理
##############################

#### １秒エンティティ召喚
scoreboard players set $Second Count 0

###パペット行動
execute as @a[tag=WithPuppet] unless score @s ModeSkill matches 71031..71039 run function puppet_manager:calc_and_act
execute as @e[tag=Automaton] at @s run function puppet_manager:bio_handling/tick

### 常に炎上処理
execute as @e[tag=Burning,nbt={Fire:-1s}] at @s if entity @p[distance=..48] run function entity_manager:burning

### スリプガ処理
execute as @e[scores={SleepgaTime=0..}] positioned as @s anchored eyes run function skill_manager:black_mage/sleepga/tick

### 死の宣告処理
execute as @a[scores={DoomCount=1..}] run function effect_manager:doom/proceed

### トカルト処理
scoreboard players remove @a[scores={Dimension=16}] TorchCount 1
execute unless score $Debug Settings matches 1.. as @a[scores={TorchCount=..0}] run function item_manager:tocult_torch

### 停止飛翔物削除
execute as @e[tag=TickingRequired] run function entity_manager:check_freeze

### デスポーンしない敵デスポーン処理
execute as @e[tag=Mob,tag=!Animal,nbt=!{PersistenceRequired:true}] at @s unless entity @a[distance=..128] run tag @s add Garbage

### スポナーカート処理
kill @e[tag=OneOff,nbt={SpawnData:{id:"minecraft:area_effect_cloud",Tags:[Stopper]}}]

### １分処理呼び出し
scoreboard players add $Second Count 1
execute if score $Second Count matches 60 run function main:one_minute

### イベント演出戻し処理
execute if score $Second Count matches -1 run function event_manager:reset_event

### スキル変更不可時間更新
scoreboard players remove @a ChangeSkillLimit 1

### 跳躍スコアリセット
scoreboard players reset @a[scores={Choyaku=0..},nbt=!{ActiveEffects:[{Id:8b}]}] Choyaku

### ダークスワンプパーティクル表示
execute at @e[tag=DarkSwamp,sort=random,limit=3] run particle minecraft:squid_ink ~ ~ ~ 2.5 0.2 2.5 0 80 force

### アフィニティ
execute as @a[scores={WaterAffinity=1..}] at @s run function skill_manager:ninja/suiton/affinity/tick
execute as @a[scores={FireAffinity=1..}] at @s run function skill_manager:ninja/katon/affinity/tick

### 黙想
execute as @a[scores={Mokuso=0..}] at @s run function skill_manager:ninja/mokuso/tick
### 風切
# execute as @a[scores={Kazakiri=0..}] at @s run function skill_manager:ninja/kazakiri/tick
### 居縮解除
execute as @e[scores={Isukumi=0..}] at @s run function skill_manager:ninja/isukumi/tick
### クレリックナレッジ
scoreboard players remove @a[scores={ClericKnowledge=0..}] ClericKnowledge 1

### 敵スキル実行
execute as @e[tag=HasSkill] unless score @s SleepgaTime matches 1.. at @s run function skill_manager:enemy/count

### 特殊状態異常回復
execute as @a[tag=Burn,nbt={Fire:-20s}] at @s run function effect_manager:burn/cure
execute as @a[scores={VirusCount=0..}] at @s run function effect_manager:virus/tick
execute as @a[scores={ConfuseCount=0..}] at @s run function effect_manager:confuse/tick

### 状態異常耐性
execute as @a[scores={ResistEffects=1..}] at @s run function effect_manager:resist
scoreboard players reset @a[scores={ResistLock=1..}] ResistLock

### プレイヤーふよふよ追尾
execute as @e[tag=FollowPlayer] at @s run function entity_manager:follow_player

### ブロック設置
execute as @e[tag=BlockPlacer] at @s run function enemy_manager:block_placer/common

### 上エンティティ維持
execute as @e[tag=Mule] at @s run function entity_manager:maintain/cargo

### ライブラ処理
scoreboard players remove $Libra Global 1
execute if score $Libra Global matches ..0 run bossbar set minecraft:enemy_health visible false

### チャンクロード
execute as @a at @s run summon minecraft:arrow ~ -20 ~ {xTile:1,yTile:1,zTile:1,NoGravity:true,Color:-1,PortalCooldown:2,Tags:[CooldownRequired]}
