##############################
### エンティティ初期化個別チェック
##############################

### チームなしで検知できなければ、モブ系ではないので、飛翔物タグを付与
execute if entity @s[team=] run tag @s add Projectile

### 自然湧きを処理する
execute if entity @s[tag=] run function initialization_manager:vanilla/main

### 非自然湧きを処理する
execute if entity @s[tag=!] run function initialization_manager:custom/main

# Ally + Boss        -> Ally + Boss
# Ally               -> Ally
# Ally + Pet         -> Ally + Pet
# Ally + Bullet      -> Ally + Bullet

# Enemy + Boss      -> Enemy + Boss
# Enemy             -> Enemy + 
# Enemy + Pet       -> Enemy + Pet
# Enemy + Bullet    -> Enemy + Bullet

# player            -> Player + Ally + MayTargeted
# Player + Pet      -> Player + Ally + Pet

# + Light           -> + Light
