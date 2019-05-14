##############################
### 所属グループ判定
##############################

### プレイヤー処理
execute if entity @s[type=minecraft:player] run function initialization_manager:custom/group/player

### 味方
execute if entity @s[tag=Ally,type=!minecraft:player] run function initialization_manager:custom/group/ally

### 敵
execute if entity @s[tag=Enemy] run function initialization_manager:custom/group/enemy
