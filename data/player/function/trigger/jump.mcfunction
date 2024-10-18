#> player:trigger/jump
### ジャンプ時処理

### 跳躍攻撃処理
execute if score @s Choyaku matches 1.. run function skill:act/ninja/choyaku/trigger/jump

### ジャンプトリガーリセット
scoreboard players reset @s Jump
