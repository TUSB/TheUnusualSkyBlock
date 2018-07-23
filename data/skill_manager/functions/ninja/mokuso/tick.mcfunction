##############################
### 黙想継続
##############################

scoreboard players set $Success Global 0
execute store success score $Success Global if score @s Mokuso matches 1 as @e[distance=..1,tag=MokusoPoint] run data merge entity @s {PortalCooldown:21}
execute store success score $Success Global if score @s Mokuso matches 2 as @e[distance=..4,tag=MokusoPoint] run data merge entity @s {PortalCooldown:21}
execute store success score $Success Global if score @s Mokuso matches 3 as @e[distance=..10,tag=MokusoPoint] run data merge entity @s {PortalCooldown:21}

execute if score $Success Global matches 0 run scoreboard players reset @s Mokuso
execute if score $Success Global matches 0 run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"黙想","color":"white","hoverEvent":{"action":"show_text","value":"自身の体力を徐々に回復する。\n移動すると効果が切れる。","color":"white"}},"の効果が切れた。"]

execute if score @s Mokuso matches 1.. run effect give @s minecraft:regeneration 1 3

###---演出---Start
playsound minecraft:ambient.underwater.loop.additions master @s ~ ~ ~ 1 
particle minecraft:nautilus ~ ~2 ~ 1.5 1 1.5 1 2 force
execute if score $Success Global matches 0 run playsound minecraft:ambient.underwater.exit master @s ~ ~ ~ 1 1.6
execute if score $Success Global matches 0 run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0
###---演出---End
