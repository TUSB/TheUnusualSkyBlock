##############################
### ターゲット位置Y規定値
##############################

### 規定値は現在地
execute store result score @s TargetPosY run data get entity @s Pos[1] 100
