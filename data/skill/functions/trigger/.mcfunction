#トリガー
execute if score @s ChangeSkill matches 1 run function skill:trigger/tellraw/current_job
execute if score @s ChangeSkill matches 100..900 run function skill:trigger/set/check_type
execute if score @s ChangeSkill matches 1000..9000 run function skill:trigger/tellraw/init
#スコアリセット
scoreboard players reset @s ChangeSkill
scoreboard players enable @s ChangeSkill
