##############################
### チェインアローヒット
##############################

#矢が直接当たったモブには2倍のダメージ
function skill:damage/load
#チェイン
execute if entity @s[scores={Level=1}] as @e[distance=..5,tag=Mob] at @s run function skill:act/hunter/chain_arrow/chain
execute if entity @s[scores={Level=2}] as @e[distance=..10,tag=Mob] at @s run function skill:act/hunter/chain_arrow/chain
execute if entity @s[scores={Level=3}] as @e[distance=..20,tag=Mob] at @s run function skill:act/hunter/chain_arrow/chain
execute if entity @s[scores={Level=4}] as @e[distance=..30,tag=Mob] at @s run function skill:act/hunter/chain_arrow/chain
