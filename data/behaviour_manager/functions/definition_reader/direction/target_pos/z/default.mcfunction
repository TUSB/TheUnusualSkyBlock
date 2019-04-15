##############################
### ターゲット位置Z規定値
##############################

### 規定値は現在地
execute store result score @s TargetPosZ run data get entity @s Pos[2] 100
