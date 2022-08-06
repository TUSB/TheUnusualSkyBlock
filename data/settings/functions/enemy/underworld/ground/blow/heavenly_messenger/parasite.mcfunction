#Function
#ルートテーブル追加
data modify storage mob_data: LootTable set value {Item:{id:"stone",tag:{SpawnEntities:[[{Tags:[Underworld,Ground,Blow,HeavenlyMessenger,Main,SpawnParticles],Level:25}]],Count:1}},Chance:1.0d,Count:1}
execute as @e[tag=Enemy,distance=0.1..5,tag=!Amanotukai_LootAdd] run function skill:enemy/function/loot_add
tag @e[tag=Enemy,distance=0.1..5] add Amanotukai_LootAdd
function oh_my_dat:please
