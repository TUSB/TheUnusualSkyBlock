#Function
execute store result score _ Random run function calc:random
#コンバット系統の種類によって以下の値を変更
scoreboard players set _ _ 6
scoreboard players operation _ Random %= _ _
summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
data modify storage mob_data: Summon set value {}
execute if score _ Random matches 0 run data modify storage mob_data: Summon.Tags set value [Global,Event,Bullet,CommonBomb,Main]
execute if score _ Random matches 1 run data modify storage mob_data: Summon.Tags set value [Global,Event,Bullet,IceBomb,Main]
execute if score _ Random matches 2 run data modify storage mob_data: Summon.Tags set value [Global,Event,Bullet,LightningBomb,Main]
execute if score _ Random matches 3 run data modify storage mob_data: Summon.Tags set value [Global,Event,Bullet,LightBomb,Main]
execute if score _ Random matches 4 run data modify storage mob_data: Summon.Tags set value [Global,Event,Bullet,DarkBomb,Main]
execute if score _ Random matches 5 run data modify storage mob_data: Summon.Tags set value [Global,Event,Bullet,DeadlyPoisonBomb,Main]
#レベルを設定
execute store result score _ Level run scoreboard players get @s Level
scoreboard players set _ _ 2
scoreboard players operation _ Level /= _ _
execute store result score _ Random run function calc:random
scoreboard players set _ _ 7
scoreboard players operation _ Random %= _ _
scoreboard players remove _ Random 3
scoreboard players operation _ Level += _ Random
execute store result storage mob_data: Summon.Level int 1 run scoreboard players get _ Level
execute store result storage mob_data: Summon.ParentID int 1 run scoreboard players get @s OhMyDatID
data modify entity @e[tag=Spawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities[0][0] merge from storage mob_data: Summon
data remove storage mob_data: Summon
