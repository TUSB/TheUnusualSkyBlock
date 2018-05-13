##############################
### 敵討伐時処理
##############################

###キルカウント初期化
scoreboard players reset @s[type=minecraft:player] KillCount

###バーストスコア設定
scoreboard players add バースト MP 1000
###回復スコア設定
scoreboard players remove $Healing Count 1

###討伐ボーナス回復
execute if score $Healing Count matches ..0 run function effect_manager:bonus_healing
