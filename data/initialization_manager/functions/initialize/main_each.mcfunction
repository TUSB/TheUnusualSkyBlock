##############################
### エンティティ初期化個別チェック
##############################

### 自然湧きを処理する
### アイテム
execute as @s[tag=,type=minecraft:item] run function initialization_manager:initialize/item
### アイテム以外
execute as @s[tag=,type=!minecraft:item] run function initialization_manager:initialize/vanilla_entity

########## 管理エンティティ処理 ##########
### プレイヤー処理
execute as @s[type=minecraft:player] run function initialization_manager:initialize/player

### 味方処理
execute as @s[tag=Alliance] run function initialization_manager:initialize/alliance

### 敵処理
execute as @s[tag=Enemy] run function initialization_manager:initialize/enemy

### 管理エンティティ処理
execute as @s[tag=Managed] run function initialization_manager:initialize/managed/entity

########## ペット処理 ##########
### ペット処理
execute as @s[tag=Pet] run function initialization_manager:initialize/pet

########## その他エンティティ処理 ##########
### 飛翔物処理
execute as @s[tag=Projectile] run function initialization_manager:initialize/projectile







## CustomAI系処理
### ターゲット初期化処理
### ディレクション初期化処理
### モーション初期化処理






team join NoCollision @s
