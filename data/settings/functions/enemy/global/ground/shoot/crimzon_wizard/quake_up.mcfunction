#Function
scoreboard players add _ _ 1
execute positioned ~ ~1 ~ if block ~ ~ ~ #main:no_collision run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Shoot,CrimzonWizard,Quake],Level:55}]]}}]}
execute positioned ~ ~1 ~ unless block ~ ~ ~ #main:no_collision if score _ _ matches ..4 run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_up
