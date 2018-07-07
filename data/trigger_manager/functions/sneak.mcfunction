##############################
### スニーク時処理
##############################

### バーストトリガー加算
execute if score @s SneakTime matches 3 run scoreboard players add @s BurstTrigger 1
execute if score バースト MP matches 99999 if score @s BurstTrigger matches 60.. run function skill_manager:burst
execute if score @s SneakTime matches ..2 run scoreboard players reset @s BurstTrigger

### 跳躍トリガー加算
execute if score @s SneakTime matches 3 run scoreboard players add @s[nbt={OnGround:true}] ChoyakuTrigger 1
execute if score @s ChoyakuTrigger matches 7 run scoreboard players operation @s ActiveSkill = @s ModeSkill
execute if score @s SneakTime matches ..2 run scoreboard players reset @s ChoyakuTrigger

### スニーク状態取得
scoreboard players operation @s SneakTime *= $2 Const
scoreboard players operation @s SneakTime %= $4 Const
