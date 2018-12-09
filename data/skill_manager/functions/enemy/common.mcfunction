##############################
### 敵スキル発動
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if entity @s[tag=ForgotSkill] run scoreboard players operation $Random Global = $IntMax Const
scoreboard players set $Threshold Global 0

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[2].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/1

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[3].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/2

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[4].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/3

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[5].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/4

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[6].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/5

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[7].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/6

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[8].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/7

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[9].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/8

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[10].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/9

execute store result score $Probability Global run data get entity @s Attributes[1].Modifiers[11].Amount 1
execute if score $Threshold Global matches 0.. run scoreboard players operation $Threshold Global += $Probability Global
execute if score $Random Global < $Threshold Global run function skill_manager:enemy/skill/10

execute if score $Threshold Global matches 0.. run function skill_manager:enemy/skill/none

execute store result score $Min Global run data get entity @s Attributes[1].Modifiers[0].Amount 1
execute store result score $Max Global run data get entity @s Attributes[1].Modifiers[1].Amount 1

### 再使用間隔リセット
scoreboard players operation $Max Global -= $Min Global
scoreboard players add $Max Global 1
function calc_manager:update_random
scoreboard players operation $Random Global %= $Max Global
scoreboard players operation $Random Global += $Min Global
scoreboard players operation @s EnemySkillSpan = $Random Global
execute if score $Min Global matches ..0 run scoreboard players operation @s EnemySkillSpan = $IntMax Const
