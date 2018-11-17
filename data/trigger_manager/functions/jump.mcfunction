##############################
### ジャンプ時処理
##############################

### 跳躍トリガー加算
execute if score @s ModeSkill matches 21021..21029 if score @s Choyaku matches 1.. at @s run function skill_manager:ninja/choyaku/cyclone

### バースト
execute if entity @s[tag=BurstReady] if score @s Jump matches 1.. run function skill_manager:burst/break

### ジャンプトリガーリセット
scoreboard players reset @s Jump
