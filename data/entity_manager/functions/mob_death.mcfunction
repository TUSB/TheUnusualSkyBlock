##############################
### 敵死亡時処理
##############################

### 敵討伐時処理
execute store result score $Tmp Global run data get entity @s Pos[1]
execute if score $Tmp Global matches -10..275 run function entity_manager:defeat_enemy
### Garbage付与
tag @s add Garbage
