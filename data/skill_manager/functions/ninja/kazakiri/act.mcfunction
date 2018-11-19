##############################
### 風切発動
##############################

execute if score @s SupportSkill matches 22091 run scoreboard players operation @s Levitate > $600 Const
execute if score @s SupportSkill matches 22092 run scoreboard players operation @s Levitate > $1200 Const
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"風切","color":"white","hoverEvent":{"action":"show_text","value":"風を纏い、空中を浮遊する。","color":"white"}},"の効果！"]

###---演出---Start
playsound minecraft:entity.bat.loop master @a[distance=..16] ~ ~ ~ 1 1.6
playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:instant_effect ~ ~0.1 ~ 1 0 1 0 100 force
particle minecraft:end_rod ~ ~1 ~ 1 0 1 0 10 force
###---演出---End
