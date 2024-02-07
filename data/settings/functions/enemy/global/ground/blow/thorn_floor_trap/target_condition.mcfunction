#Function
scoreboard players set _ _ 0
execute if entity @e[distance=..1.5,tag=Enemy,tag=!Trap] run scoreboard players set _ _ 1
execute if entity @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] run scoreboard players set _ _ 1
execute if score _ _ matches 1
