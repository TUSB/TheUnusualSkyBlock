
### 死亡時処理

# 呪詛
execute if entity @s[tag=Curse] run function effects:curse/death

## 死亡トリガーリセット
execute store result score @s Hunger run data get entity @s foodLevel
scoreboard players reset @s Deaths
