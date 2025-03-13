#Function
#ルートテーブル追加
data modify storage mob_data: LootTable set value {Item:{id:"stone",tag:{SpawnEntities:[[{Tags:[Desert,Ground,Blow,WrigglingSand,Main,SpawnParticles],Level:47}]],Count:1}},Chance:1.0d,Count:1}
execute as @e[tag=Enemy,distance=0.1..5,tag=!Ugomekusuna_LootAdd,tag=!NoLootTableAdd] run function skill:enemy/function/loot_add
execute as @e[tag=Enemy,distance=0.1..5,tag=!Ugomekusuna_LootAdd,tag=!NoLootTableAdd] run effect give @s glowing infinite 0 true
execute if entity @e[tag=Enemy,distance=0.1..5,tag=!Ugomekusuna_LootAdd,tag=!NoLootTableAdd] run scoreboard players remove @s MP 80
tag @e[tag=Enemy,distance=0.1..5,tag=!NoLootTableAdd] add Ugomekusuna_LootAdd
function #oh_my_dat:please
