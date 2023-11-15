#Function
#ルートテーブル追加
data modify storage mob_data: LootTable set value {Item:{id:"stone",tag:{SpawnEntities:[[{Tags:[Underworld,Ground,Blow,HeavenlyMessenger,Main,SpawnParticles],Level:25}]],Count:1}},Chance:1.0d,Count:1}
execute as @e[tag=Enemy,distance=0.1..5,tag=!Amanotukai_LootAdd,tag=!NoLootTableAdd] run function skill:enemy/function/loot_add
execute as @e[tag=Enemy,distance=0.1..5,tag=!Amanotukai_LootAdd,tag=!NoLootTableAdd] run effect give @s glowing infinite 0 true
tag @e[tag=Enemy,distance=0.1..5,tag=!NoLootTableAdd] add Amanotukai_LootAdd
function #oh_my_dat:please
