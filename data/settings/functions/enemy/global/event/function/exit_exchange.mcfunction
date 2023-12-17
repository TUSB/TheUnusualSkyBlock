#Function
execute at @e[tag=ExitExchangeMarker] run stopsound @a[distance=..3,limit=1,sort=nearest] * minecraft:block.portal.trigger
execute at @e[tag=ExitExchangeMarker] run setblock ~ 319 ~ light[level=0]
execute as @e[tag=ExitExchangeMarker] at @s positioned ~-0.5 ~ ~-0.5 run tp @a[y=0,dy=320,dx=1,dz=1] @s
kill @e[tag=ExitExchangeMarker]

execute if entity @s as @a[distance=..4,predicate=entity:player] at @s run summon marker ~ ~ ~ {Tags:[ExitExchangeMarker]}
execute if entity @s as @a[distance=..4,predicate=entity:player] at @s run tp @e[type=marker,tag=ExitExchangeMarker,distance=..0.01,limit=1,sort=nearest] @s
execute if entity @s as @a[distance=..4,predicate=entity:player] at @s run setblock ~ 319 ~ nether_portal
execute if entity @s as @a[distance=..4,predicate=entity:player] at @s run tp @s ~ 318 ~

# 村人が実行していればスケジュール登録
execute if entity @s run schedule function settings:enemy/global/event/function/exit_exchange 2t
