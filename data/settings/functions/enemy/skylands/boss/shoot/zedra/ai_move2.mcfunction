#Function
## テレポート
function calc:geometry/tp_00000
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[0] 1000
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos[0] 1000
execute store result entity 0-0-0-0-0 Pos[0] double 0.001 run scoreboard players operation _ _ += _ Calc
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[1] 1000
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos[1] 1000
execute store result entity 0-0-0-0-0 Pos[1] double 0.001 run scoreboard players operation _ _ += _ Calc
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[2] 1000
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.SeparatePos[2] 1000
execute store result entity 0-0-0-0-0 Pos[2] double 0.001 run scoreboard players operation _ _ += _ Calc
execute positioned as 0-0-0-0-0 run tp @s ~ ~ ~ ~ ~
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[type=armor_stand,distance=..3] run scoreboard players operation @s ParentID -= _ _
execute as @e[type=armor_stand,distance=..3,scores={ParentID=0}] run tag @s add NowTarget
execute as @e[type=armor_stand,distance=..3] run scoreboard players operation @s ParentID += _ _
execute at @s facing entity @a[gamemode=!creative,gamemode=!spectator,distance=..64,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute rotated as @s as @e[distance=..3,tag=NowTarget] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=NowTarget] remove NowTarget
execute as 0-0-0-0-0 run function calc:geometry/return_marker
playsound minecraft:entity.enderman.teleport hostile @a[distance=..64] ~ ~1 ~ 2 1.25
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..64] ~ ~1 ~ 0.5 1.5
playsound minecraft:entity.blaze.shoot hostile @a[distance=..64] ~ ~1 ~ 0.5 0.75
execute at @s run summon armor_stand ~ ~0.9 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,ZedraAec,Main1],Level:1}]]}}]}
