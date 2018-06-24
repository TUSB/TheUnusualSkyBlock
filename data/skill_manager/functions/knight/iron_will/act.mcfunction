##############################
### アイアンウィル発動
##############################

execute if score @s SupportSkill matches 12021 run scoreboard players set @s IronWill 160
execute if score @s SupportSkill matches 12022 run scoreboard players set @s IronWill 400
execute if score @s SupportSkill matches 12023 run scoreboard players set @s IronWill 720

scoreboard players set @s SkillInterval 240

execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果！"]
