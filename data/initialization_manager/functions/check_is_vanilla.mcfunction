##############################
### エンティティ初期化個別チェック
##############################

### チームなしで検知できなければ、モブ系ではないので、飛翔物タグを付与
execute if entity @s[team=] run tag @s add Projectile

### 自然湧きを処理する
execute if entity @s[tag=] run function initialization_manager:vanilla/main

### 非自然湧きを処理する
execute if entity @s[tag=!] run function initialization_manager:custom/main

# Ally + Boss        -> Ally + MayTargeted + Boss
# Ally               -> Ally + MayTargeted
# Ally + Colony      -> Ally + Colony
# Ally + Pet         -> Ally + Pet
# Ally + Bullet      -> Ally + Bullet

# Enemy + Boss      -> Enemy + MayTargeted + Boss
# Enemy             -> Enemy + MayTargeted
# Enemy + Colony    -> Enemy + Colony
# Enemy + Pet       -> Enemy + Pet
# Enemy + Bullet    -> Enemy + Bullet

# player            -> Player + Ally + MayTargeted
# Player + Pet      -> Player + Ally + Pet
