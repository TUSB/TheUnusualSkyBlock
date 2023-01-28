#Function
## アマスタが暫くいなければ召喚
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn 1
execute if score _ _ matches 3 run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,Zedra,Ai],Level:60}]]}}]}
execute if score _ _ matches 0 store result score _ Calc run scoreboard players get @s OhMyDatID
execute if score _ _ matches 0 as @e[tag=ZedraAI] unless entity @s[scores={ParentID=1..}] run function settings:enemy/skylands/boss/shoot/zedra/tick_respawn3
