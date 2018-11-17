##############################
### スニーク時処理
##############################

### スニーク中
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1

### バースト準備
execute if score @s SneakTrigger matches 60 run function skill_manager:burst/ready
### 跳躍
scoreboard players operation @s ChoyakuTrigger = @s SneakTrigger
scoreboard players operation @s ChoyakuTrigger %= $5 Const
execute if score @s ModeSkill matches 21021..21029 if score @s ChoyakuTrigger matches 0 if entity @s[nbt={OnGround:true}] run scoreboard players operation @s ActiveSkill = @s ModeSkill
### 設定表示
execute if score @s SneakTrigger matches 200 run function main:settings/show

### スニーク解除
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger
tag @s[tag=BurstReady,scores={SneakTime=..2}] remove BurstReady

### スニーク状態取得
scoreboard players operation @s SneakTime *= $2 Const
scoreboard players operation @s SneakTime %= $4 Const
