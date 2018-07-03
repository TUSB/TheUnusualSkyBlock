##############################
### １秒処理
##############################

#### １秒エンティティ召喚
scoreboard players set $Second Count 0

###パペット行動
execute as @a[tag=WithPuppet] unless score @s ModeSkill matches 71031..71039 run function puppet_manager:calc_and_act
execute as @e[tag=Automaton] at @s run function puppet_manager:bio_handling/tick

### 死の宣告処理
execute as @a[scores={DoomCount=1..}] run function effect_manager:doom/proceed

### トカルト処理
scoreboard players remove @a[scores={Dimension=16}] TorchCount 1
execute as @a[scores={TorchCount=..0}] run function item_manager:tocult_torch

### 停止飛翔物削除
execute as @e[tag=TickingRequired] run function entity_manager:check_freeze

### デスポーンしない敵デスポーン処理
execute as @e[tag=Mob,tag=!Animal,nbt=!{PersistenceRequired:true}] at @s unless entity @a[distance=..128] run tag @s add Garbage

### スポナーカート処理
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run kill @s
execute as @e[type=minecraft:spawner_minecart] at @s positioned ~-1 ~-1 ~-1 unless entity @e[dx=2,dy=2,dz=2,nbt={Passengers:[{}]},limit=1] run tag @s add Garbage

### １分処理呼び出し
scoreboard players add $Second Count 1
execute if score $Second Count matches 60 run function main:one_minute

### イベント演出戻し処理
execute if score $Second Count matches -1 run function event_manager:reset_event

### スキル変更不可時間更新
scoreboard players remove @a ChangeSkillLimit 1

### ダークスワンプパーティクル表示
execute at @e[tag=DarkSwamp,sort=random,limit=3] run particle minecraft:squid_ink ~ ~ ~ 2.5 0.2 2.5 0 80 force

### プレイヤーふよふよ追尾
execute as @e[tag=FollowPlayer] at @s run function entity_manager:follow_player

### ブロック設置
execute as @e[tag=BlockPlacer] at @s run function enemy_manager:block_placer/common

### 上エンティティ維持
execute as @e[tag=Mule] at @s run function calc_manager:maintain/cargo

### ライブラ処理
scoreboard players remove $Libra Global 1
execute if score $Libra Global matches ..0 run bossbar set minecraft:enemy_health visible false

###　チャンクロード
execute as @a at @s run summon minecraft:arrow ~ -20 ~ {XTile:1,YTile:1,ZTile:1,NoGravity:true,Color:-1,PortalCooldown:2,Tags:[CooldownRequired]}
