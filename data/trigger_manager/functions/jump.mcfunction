##############################
### ジャンプ時処理
##############################

### 跳躍トリガー加算
execute if score @s Choyaku matches 1.. at @s run function skill_manager:ninja/choyaku/cyclone

### ジャンプトリガーリセット
scoreboard players reset @s Jump
