##############################
### エンティティ初期化個別チェック
##############################

### チームなしで検知できなければ、モブ系ではないので、飛翔物タグを付与
execute if entity @s[team=] run tag @s add Projectile

### 自然湧きを処理する
execute if entity @s[tag=] run function initialization_manager:vanilla/main

### 非自然湧きを処理する
execute if entity @s[tag=!] run function initialization_manager:custom/main

# Ally + Boss        -> Ally + Friendly + HealthManaged + DataManaged + Boss
# Ally               -> Ally + Friendly + HealthManaged + DataManaged
# Ally + Colony      -> Ally + Friendly + HealthManaged + Colony
# Ally + Pet         -> Ally + Friendly + HealthManaged + Pet
# Ally + Bullet      -> Ally + Bullet

# Enemy + Boss      -> Enemy + HealthManaged + DataManaged + Boss
# Enemy             -> Enemy + HealthManaged + DataManaged
# Enemy + Colony    -> Enemy + HealthManaged + Colony
# Enemy + Pet       -> Enemy + HealthManaged + Pet
# Enemy + Bullet    -> Enemy + Bullet

# player            -> Player + Friendly + DataManaged
# Player + Pet      -> Player + Friendly + HealthManaged + Pet
