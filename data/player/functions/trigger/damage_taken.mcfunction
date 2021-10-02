
### 被ダメージトリガー

## トント 被ダメージ処理
execute if score @s TntCount matches 0.. run function effects:tnt/check

### 剣士＜タクティカルヒール＞発動
execute if score @s DamageTaken matches 120.. if score @s TacticalHeal matches 0.. run function skill:act/knight/tactical_heal/react

# トリガーリセット
scoreboard players reset @s DamageTaken
