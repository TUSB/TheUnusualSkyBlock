#Function
# 確定凍結
    execute at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~ 1 0
    execute at @s run playsound minecraft:entity.puffer_fish.blow_out hostile @s ~ ~ ~ 1 0
    execute at @s run playsound minecraft:entity.player.swim hostile @s ~ ~ ~ 0.5 0.5
    execute at @s run particle dust 0 1 100000000 0.75 ~ ~1 ~ 0.4 0.75 0.4 0 30 force @a[distance=..32]
    tellraw @s [{"translate":"%1$sから放たれたオーラは、水に触れる者を凍てつかせるだろう。","color":"dark_aqua","with":[{"translate":"呪縛魚","color":"#FF0000","bold":true}]}]
    effect give @s invisibility 10 4 true
    execute at @s run function skill:enemy/damage/
