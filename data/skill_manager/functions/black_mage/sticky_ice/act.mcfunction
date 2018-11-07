##############################
### スティッキーアイス発動
##############################

execute if block ~ ~ ~ minecraft:air run summon minecraft:falling_block ~ ~ ~ {Tags:[StickyIce,TickingTask,Initializing],BlockState:{Name:"minecraft:ice"},PortalCooldown:1,NoGravity:1b,Time:1,DropItem:0b}
execute as @e[tag=Initializing,limit=1] positioned as @s run setblock ~ ~ ~ minecraft:cobweb keep

execute store result score $Height Global run data get entity @s Pos[1] 1
scoreboard players remove $Height Global 300
execute if score @s ModeSkill matches 52012 run scoreboard players operation $Height Global *= $2 Const
scoreboard players add $Height Global 600

execute as @e[tag=Initializing,limit=1] store result entity @s Time int 1 run scoreboard players get $Height Global
execute as @e[distance=..0.01,tag=StickyIce,limit=1] store result entity @s Time int 1 run scoreboard players get $Height Global
tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.return master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:item minecraft:ice ~ ~0.7 ~ 0.6 0.6 0.6 0.05 50 force
particle minecraft:item minecraft:cobweb ~ ~0.7 ~ 0.6 0.6 0.6 0.05 30 force
###---演出---End
