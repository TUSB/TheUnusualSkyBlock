##############################
### スニーク時処理
##############################

### バーストトリガー加算
execute if score @s SneakTime matches 3 run scoreboard players add @s BurstTrigger 1
execute if score バースト MP matches 99999 if score @s BurstTrigger matches 100.. run function skill_manager:burst
execute if score @s SneakTime matches ..2 run scoreboard players reset @s BurstTrigger

### スニーク状態取得
scoreboard players operation @s SneakTime *= $2 Const
scoreboard players operation @s SneakTime %= $4 Const
