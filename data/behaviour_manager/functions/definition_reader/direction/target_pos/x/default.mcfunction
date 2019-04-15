##############################
### ターゲット位置X規定値
##############################

### 規定値は現在地
execute store result score @s TargetPosX run data get entity @s Pos[0] 100
