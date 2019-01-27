##############################
### モブダメージ適用
##############################

###幻影反映
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global matches 10.. if score @s BlinkCount matches 1.. run function skill_manager:enemy/blink/on_success

###被ダメ時スキル
execute if entity @s[tag=HasSkill,tag=!ForgotSkill] run function skill_manager:enemy/skill/hurted

###体力更新
execute store result score $Health Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $Health Global -= @s Damage
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get $Health Global

