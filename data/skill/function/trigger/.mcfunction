#> skill:trigger/
#トリガー

# 現在の職業のスキルを表示するように選択
execute if score @s ChangeSkill matches 1 run function skill:trigger/tellraw/current_job
# アイテムへスキル付与
execute if score @s ChangeSkill matches 100..999 unless score @s SkillShortcut matches 1000.. run function skill:trigger/set/check_type
# ショートカットへスキル登録
execute if score @s ChangeSkill matches 100..999 if score @s SkillShortcut matches 1000.. anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/edit/check_aec
# 選択された職業のスキルを表示
execute if score @s ChangeSkill matches 1000..9000 in area:control_area run function skill:trigger/tellraw/init
# ショートカットの編集モードを表示
execute if score @s ChangeSkill matches 10000 anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/edit/show
# ショートカット表示をリセット
execute if score @s ChangeSkill matches 10001 anchored eyes positioned ^ ^-0.85 ^5 run function skill:shortcut/reset
execute if score @s ChangeSkill matches 10001 run function makeup:skill/shortcut/sound
# アイテムからスキル削除
execute if score @s ChangeSkill matches 10010 run function skill:trigger/delete/detection

#スコアリセット
scoreboard players reset @s ChangeSkill
scoreboard players enable @s ChangeSkill
