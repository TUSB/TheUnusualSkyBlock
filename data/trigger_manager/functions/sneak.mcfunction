##############################
### スニーク時処理
##############################

### スニーク中
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1

### バースト準備
execute if score @s SneakTrigger matches 40 run function skill_manager:burst/ready
### 跳躍
scoreboard players operation $ChoyakuTrigger Global = @s SneakTrigger
scoreboard players operation $ChoyakuTrigger Global %= $20 Const
execute if score $ChoyakuTrigger Global matches 0 if score @s ModeSkill matches 21021..21029 if entity @s[scores={Levitate=0..}] unless block ~ ~-0.40 ~ minecraft:air run scoreboard players operation @s ActiveSkill = @s ModeSkill
scoreboard players operation $ChoyakuTrigger Global %= $5 Const
execute if score $ChoyakuTrigger Global matches 0 if score @s ModeSkill matches 21021..21029 if entity @s[nbt={OnGround:true}] run scoreboard players operation @s ActiveSkill = @s ModeSkill
### 設定表示
execute if score @s SneakTrigger matches 200 run function main:settings/show

### スニーク解除
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger
tag @s[tag=BurstReady,scores={SneakTime=..2}] remove BurstReady
execute if entity @s[scores={Levitate=0..,SneakTime=2}] run function skill_manager:ninja/levitate/jump
execute if score @s SneakTime matches 2 if score @s ModeSkill matches 11041..11049 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run function skill_manager:knight/aerial_slash/act_check

### スニーク状態取得
scoreboard players operation @s SneakTime *= $2 Const
scoreboard players operation @s SneakTime %= $4 Const
