##############################
### 敵死亡時処理
##############################

### 敵討伐時処理
execute if entity @s[y=-10,dy=275] run function entity_manager:defeat_enemy
### Garbage付与
tag @s add Garbage
