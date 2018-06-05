##############################
### ダークスワンプ発動
##############################

###ダークスワンプ発動
summon minecraft:armor_stand ~ ~ ~ {Tags:[DarkSwamp,DarkSwamp1,Initialized,Initializing],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoBasePlate:true,NoGravity:true}
#summon minecraft:armor_stand ~ ~ ~ {Tags:[DarkSwamp,DarkSwamp2,Initialized,Initializing],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoBasePlate:true,NoGravity:true}
scoreboard players set @e[tag=Initializing,limit=1] DarkSwamp 5
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
tag @e[tag=Initializing,limit=1] remove Initializing
###MP消費
scoreboard players operation @s MPConsumption += @s ModeCost
