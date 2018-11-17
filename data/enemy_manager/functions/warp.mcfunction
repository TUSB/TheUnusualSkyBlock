##############################
### ワープ共通
##############################

tellraw @a [{"text":"","color":"yellow"},{"selector":"@s","color":"white"},"は",{"selector":"@a[gamemode=!spectator,gamemode=!creative,scores={Age=1..},sort=nearest,limit=1]"},"の背後に回り込んだ！"]
execute at @a[gamemode=!spectator,gamemode=!creative,scores={Age=1..},sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-5 positioned ~ ~2 ~ run tp @s ~ ~ ~
effect give @s minecraft:slow_falling 1 0 true
