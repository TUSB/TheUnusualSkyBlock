##############################
### エンティティ初期化個別チェック
##############################

### 自然湧きを処理する
execute as @s[tag=] run function initialization_manager:vanilla/main

### 非自然湧きを処理する
execute as @s[tag=!] run function initialization_manager:custom/main

# Ally + Boss        -> Ally + Friendly + HealthManaged + DataManaged + Boss
# Ally               -> Ally + Friendly + HealthManaged + DataManaged
# Ally + Colony      -> Ally + Friendly + HealthManaged + Colony
# Ally + Pet         -> Ally + Friendly + HealthManaged + Pet

# Enemy + Boss      -> Enemy + HealthManaged + DataManaged + Boss
# Enemy             -> Enemy + HealthManaged + DataManaged
# Enemy + Colony    -> Enemy + HealthManaged + Colony
# Enemy + Pet       -> Enemy + HealthManaged + Pet

# player            -> Player + Friendly + DataManaged
# Player + Pet      -> Player + Friendly + HealthManaged + Pet

# Bullet            -> Bullet




## CustomAI系処理
### ターゲット初期化処理
### ディレクション初期化処理
### モーション初期化処理



