#トリガー
execute if score @s ChangeSkill matches 1 run function skill:trigger/tellraw/current_job
execute if score @s ChangeSkill matches 100..999 unless score @s SkillShortcut matches 1000.. run function skill:trigger/set/check_type
execute if score @s ChangeSkill matches 100..999 if score @s SkillShortcut matches 1000.. anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/edit/check_aec
execute if score @s ChangeSkill matches 1000..9000 in area:control_area run function skill:trigger/tellraw/init
execute if score @s ChangeSkill matches 10000 anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/edit/show
execute if score @s ChangeSkill matches 10001 anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/reset
execute if score @s ChangeSkill matches 10001 run function makeup:skill/shortcut/sound
execute if score @s ChangeSkill matches 10010 run function skill:trigger/delete/detection

#スコアリセット
scoreboard players reset @s ChangeSkill
scoreboard players enable @s ChangeSkill
