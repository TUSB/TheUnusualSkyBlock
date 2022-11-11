execute if entity @s[scores={TsuremaiLevel=1..}] run tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"連舞","color":"white","hoverEvent":{"action":"show_text","value":[{"translate":"近接攻撃するほど攻撃力が上がる。"}],"color":"white"}}]}]
execute unless entity @s[scores={TsuremaiLevel=1..}] run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s","color":"white"},{"translate":"連舞","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"近接攻撃するほど攻撃力が上がる。"},"color":"white"}}]}]

execute if entity @s[scores={TsuremaiLevel=1..}] run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
execute if entity @s[scores={TsuremaiLevel=1..}] rotated ~ 0 run particle minecraft:sweep_attack ^ ^0.2 ^1.3 0 0 0 2.5 2 force
execute unless entity @s[scores={TsuremaiLevel=1..}] run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
