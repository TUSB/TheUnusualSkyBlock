#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..16] at @s if block ~ ~ ~ minecraft:water run tag @s add NowTarget
execute at @a[tag=NowTarget] run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~ 1 0
execute at @a[tag=NowTarget] run playsound minecraft:entity.puffer_fish.blow_out hostile @s ~ ~ ~ 1 0
execute at @a[tag=NowTarget] run playsound minecraft:entity.player.swim hostile @a[tag=NowTarget] ~ ~ ~ 0.5 0.5
execute at @a[tag=NowTarget] run particle dust 0 1 100000000 0.75 ~ ~1 ~ 0.4 0.75 0.4 0 30 force @a[distance=..32]
data modify storage mob_data: MobName set from entity @s CustomName
tellraw @a[tag=NowTarget] [{"translate":"%1$sから放たれたオーラは、水に触れる者を凍てつかせるだろう。","color":"dark_aqua","with":[{"translate":"深海廻","color":"#FF0000","bold":true}]}]
effect give @a[tag=NowTarget] invisibility 10 4 true
execute at @a[tag=NowTarget] run function skill:enemy/damage/
tag @a[tag=NowTarget] remove NowTarget
