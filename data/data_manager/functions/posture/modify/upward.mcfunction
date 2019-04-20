##############################
### 位置上に補正
##############################

### Y取得
execute store result score $_ Y run data get entity 1-0-1-0-0 Pos[1] 100
### 補正
scoreboard players operation $_ Y += $Offset Distance
### Y設定
execute store result entity 1-0-1-0-0 Pos[1] double 0.01 run scoreboard players get $_ Y
