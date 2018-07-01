##############################
### アイアンウィル発動
##############################

execute if score @s SupportSkill matches 12021 run scoreboard players set @s IronWill 160
execute if score @s SupportSkill matches 12022 run scoreboard players set @s IronWill 400
execute if score @s SupportSkill matches 12023 run scoreboard players set @s IronWill 720

execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果！"]

###---演出---Start
playsound entity.puffer_fish.death master as @a[distance=..10] ~ ~ ~ 0.7 0
playsound entity.polar_bear.warning master @a[distance=..10] ~ ~ ~ 1 0
playsound entity.firework_rocket.twinkle master @a[distance=..10] ~ ~ ~ 1 0.4
particle minecraft:angry_villager ~ ~-0.3 ~ 1 0.2 1 1 14 force
###---演出---End
