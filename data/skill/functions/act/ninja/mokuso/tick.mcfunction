##############################
### 黙想継続
##############################

scoreboard players set _ _ 0
execute if score @s Mokuso matches 1 store success score _ _ run data modify entity @e[distance=..1,tag=MokusoPoint,limit=1,sort=nearest] PortalCooldown set value 21
execute if score @s Mokuso matches 2 store success score _ _ run data modify entity @e[distance=..4,tag=MokusoPoint,limit=1,sort=nearest] PortalCooldown set value 21
execute if score @s Mokuso matches 3 store success score _ _ run data modify entity @e[distance=..10,tag=MokusoPoint,limit=1,sort=nearest] PortalCooldown set value 21

execute if score _ _ matches 0 run scoreboard players reset @s Mokuso
execute if score _ _ matches 0 run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"黙想","color":"white","hoverEvent":{"action":"show_text","value":"自身の体力を徐々に回復する。\n移動すると効果が切れる。","color":"white"}},"の効果が切れた。"]

execute if score _ _ matches 1 run effect give @s minecraft:regeneration 1 3
#演出
function makeup:skill/act/ninja/mokuso/tick
