
### 被ダメージトリガー

## トント 被ダメージ処理
execute if score @s TntCount matches 0.. run function effects:tnt/check

# トリガーリセット
scoreboard players reset @s DamageTaken
