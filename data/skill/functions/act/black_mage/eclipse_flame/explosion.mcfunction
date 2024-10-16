##############################
### エクリプスフレイム爆発
##############################

### 半径を加算
scoreboard players add @s EclipseRadius 3

### 座標変更
execute store result score _ EclipseRadius run data get entity @s Pos[1] 100
scoreboard players operation _ EclipseRadius += @s EclipseRadius
execute store result entity @s Pos[1] double 0.01 run scoreboard players get _ EclipseRadius
### ダメージ半径取得
scoreboard players set _ EclipseRadius 100
scoreboard players operation _ EclipseRadius += @s EclipseRadius
### 座標変更
execute store result score _ EclipseRadius run data get entity @s Pos[1] 100
scoreboard players operation _ EclipseRadius += @s EclipseRadius
execute store result entity @s Pos[1] double 0.01 run scoreboard players get _ EclipseRadius
#演出
function makeup:skill/act/black_mage/eclipse_flame/explosion
# 4Tickに1回流すように
scoreboard players operation _ _ = $Tick Count
scoreboard players set _ Calc 5
scoreboard players operation _ _ %= _ Calc
execute if score _ _ matches 0 run function makeup:skill/act/black_mage/eclipse_flame/sound

### 座標を戻す
tp @s ~ ~-0.01 ~ ~10 ~-1
execute at @s[x_rotation=-90..68] run tp @s ~ ~ ~ ~ 89
