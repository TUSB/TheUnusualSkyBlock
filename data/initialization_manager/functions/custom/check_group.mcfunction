##############################
### 所属グループ判定
##############################

### プレイヤー処理
execute if entity @s[type=minecraft:player] run function initialization_manager:custom/group/player

### プレイヤー(ペット)
execute if entity @s[tag=Player,tag=Pet] run function initialization_manager:custom/group/player_pet

### 味方
execute if entity @s[tag=Ally] run function initialization_manager:custom/group/ally

### 敵
execute if entity @s[tag=Enemy] run function initialization_manager:custom/group/enemy
