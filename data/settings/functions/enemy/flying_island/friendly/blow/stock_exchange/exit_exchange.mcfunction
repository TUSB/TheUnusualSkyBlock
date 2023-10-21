#Function
execute at @e[tag=ExitExchangeMarker] run stopsound @a[distance=..3,limit=1,sort=nearest] * minecraft:block.portal.trigger
execute at @e[tag=ExitExchangeMarker] run setblock ~ ~ ~ air
kill @e[tag=ExitExchangeMarker]

execute if entity @s as @a[distance=..4,predicate=entity:player] at @s unless block ~ ~ ~ air run summon marker ~ ~1 ~ {Tags:[ExitExchangeMarker]}
execute if entity @s as @a[distance=..4,predicate=entity:player] at @s unless block ~ ~ ~ air run setblock ~ ~1 ~ nether_portal

execute if entity @s as @a[distance=..4,predicate=entity:player] at @s if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[ExitExchangeMarker]}
execute if entity @s as @a[distance=..4,predicate=entity:player] at @s if block ~ ~ ~ air run setblock ~ ~ ~ nether_portal

# 村人が実行していればスケジュール登録
execute if entity @s run schedule function settings:enemy/flying_island/friendly/blow/stock_exchange/exit_exchange 3t

