scoreboard players tag @s add Driftable
scoreboard players tag @s add minecraft:arrow {Tags:[FlyingObject],inGround:false,life:0s}
scoreboard players tag @s[tag=minecraft:arrow] add DriftableA
execute @s[type=minecraft:shulker_bullet] ~ ~ ~ /effect @e[r=5,type=minecraft:shulker,c=1] minecraft:wither 1 1 true
