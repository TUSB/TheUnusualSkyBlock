#Function
scoreboard players add _ _ 1
execute unless block ~ ~-1 ~ #block:no_collision run summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Ground,Shoot,CrimzonWizard,Quake],Level:55}]]}}]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #block:no_collision if score _ _ matches ..5 run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_down
