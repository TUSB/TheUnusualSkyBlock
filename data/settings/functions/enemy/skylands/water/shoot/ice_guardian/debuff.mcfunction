#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1,sort=nearest,limit=1] run tag @s add NowTarget
playsound minecraft:block.beacon.deactivate hostile @a[tag=NowTarget] ~ ~ ~ 1 0
playsound minecraft:entity.puffer_fish.blow_out hostile @a[tag=NowTarget] ~ ~ ~ 1 0
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @a[tag=NowTarget] invisibility 10 4 true
execute if score _ Random matches 1 run effect give @a[tag=NowTarget] slowness 5 4 true
tag @a[tag=NowTarget] remove NoeTarget
