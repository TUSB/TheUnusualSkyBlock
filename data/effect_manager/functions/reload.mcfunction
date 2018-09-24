##############################
### スキル再設定時間リセット
##############################

scoreboard players set @s ChangeSkillLimit 0
tellraw @s {"text":"スキルが再設定できるようになった！","color":"green"}
