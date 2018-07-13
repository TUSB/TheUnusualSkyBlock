##############################
### 風切発動
##############################

execute if score @s SupportSkill matches 22091 run scoreboard players operation @s Kazakiri > $10 Const
execute if score @s SupportSkill matches 22092 run scoreboard players operation @s Kazakiri > $25 Const
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果！"]

###---演出---Start

###---演出---End
