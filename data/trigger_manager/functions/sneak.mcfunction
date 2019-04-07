##############################
### スニーク時処理
##############################

### スニーク中
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1

### バースト準備
execute if score @s SneakTrigger matches 40 if score バースト MP matches 100000.. run function skill_manager:burst/ready
### 跳躍
scoreboard players operation $ChoyakuTrigger Global = @s SneakTrigger
scoreboard players operation $ChoyakuTrigger Global %= $20 Const
execute if score $ChoyakuTrigger Global matches 0 if score @s ModeSkill matches 21021..21029 if entity @s[scores={Levitate=0..}] unless block ~ ~-0.40 ~ minecraft:air run scoreboard players operation @s ActiveSkill = @s ModeSkill
scoreboard players operation $ChoyakuTrigger Global %= $5 Const
execute if score $ChoyakuTrigger Global matches 0 if score @s ModeSkill matches 21021..21029 if entity @s[nbt={OnGround:true}] run scoreboard players operation @s ActiveSkill = @s ModeSkill
### 設定表示
execute if score @s SneakTrigger matches 200 if entity @s[tag=!SuppressSettings] run function main:settings/show
### ピクミン表示
execute if score @s[tag=Olimar] SneakTrigger matches 1.. anchored eyes positioned ^ ^ ^32 anchored feet run function pikmin_manager:draw/parabora

### スニーク解除
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger
# バースト表示判定リセット
tag @s[tag=BurstReady,scores={SneakTime=..2}] remove BurstReady
# レビテトジャンプ
execute if entity @s[scores={Levitate=0..,SneakTime=2}] unless block ~ ~-0.40 ~ minecraft:air run function skill_manager:ninja/levitate/jump
# 真空斬り
execute if score @s SneakTime matches 2 if score @s ModeSkill matches 11041..11049 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run function skill_manager:knight/aerial_slash/act_check
# ピクミン投げる
execute if score @s[tag=Olimar] SneakTime matches 2 run function pikmin_manager:throw/cast

### スニーク状態取得
scoreboard players operation @s SneakTime *= $2 Const
scoreboard players operation @s SneakTime %= $4 Const
