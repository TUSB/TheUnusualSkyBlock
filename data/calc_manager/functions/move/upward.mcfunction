##############################
### 位置上に補正
##############################

### Y取得
execute store result score $_ Y run data get entity @s Pos[1] 100
### Y設定
execute store result entity @s Pos[1] double 0.01 run scoreboard players operation $_ Y += $Offset Distance
