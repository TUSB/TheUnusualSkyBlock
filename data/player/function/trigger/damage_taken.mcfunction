#> player:trigger/damage_taken
### 被ダメージトリガー

## トント 被ダメージ処理
execute if score @s TntCount matches 0.. run function effect:tnt/check

### 剣士＜リアクティブヒール＞発動
execute if score @s ReactiveLevel matches 1.. run function skill:act/knight/reactive_heal/trigger/damage_taken

### 剣士＜タクティカルヒール＞発動
execute if score @s DamageTaken matches 120.. if score @s TacticalHeal matches 0.. run function skill:act/knight/tactical_heal/react

# トリガーリセット
scoreboard players reset @s DamageTaken
