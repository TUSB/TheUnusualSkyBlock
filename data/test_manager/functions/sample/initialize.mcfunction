
tag @s add Initialized
team join NoCollision @s
execute store result score @s ID run data get entity @s UUIDMost 0.0000000001
scoreboard players operation @s ID %= $100000 Const
scoreboard players operation @s TargetID = $ChainID Global
scoreboard players operation $ChainID Global = @s ID

execute in overworld run summon minecraft:item 0.0 0.0 0.0 {Age:-32768s,PickupDelay:32767s,NoGravity:true,Invulnerable:true,Tags:[Initialized,Linker,System],Item:{id:"minecraft:stone",Count:1b,tag:{Entity:{}}}}
execute in overworld positioned 0.0 0.0 0.0 store result entity @e[distance=0,tag=Linker,limit=1] Item.tag.ID int 1 run scoreboard players get @s ID
execute in overworld positioned 0.0 0.0 0.0 store result entity @e[distance=0,tag=Linker,limit=1] Pos[1] double 0.01 run scoreboard players get @s ID

me を初期化しました。
