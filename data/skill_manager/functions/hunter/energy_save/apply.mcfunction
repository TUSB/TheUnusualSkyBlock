##############################
### エナジーセーブ適用
##############################

execute if score $ActiveSkill Global matches 32051 run scoreboard players operation @s EnergySave > $1 Const
execute if score $ActiveSkill Global matches 32052 run scoreboard players operation @s EnergySave > $2 Const
execute if score $ActiveSkill Global matches 32053 run scoreboard players operation @s EnergySave > $3 Const

###メッセージ
execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":"消費MPが少なくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":"消費MPが少なくなる。","color":"white"}},"の効果！"]

###---演出---Start
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.cat.ambient master @a[distance=..16] ~ ~ ~ 0.5 1.5
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:mobSpell,Radius:3f,Duration:15f,Color:2752382}
###---演出---End
