#Function
#Spawnスキルを起動
data modify storage mob_data: Call set value {Count:1,SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,Tippy,Main],Level:20}],[{Tags:[Skylands,Sky,Shoot,Tippy,DisplayBody],Level:20}],[{Tags:[Skylands,Sky,Shoot,Tippy,DisplayRing],Level:20}]]}
function skill:enemy/spawn/
#スキルが起動したら近くのプレイヤーに知らせる
tellraw @a[distance=..16] [{"translate":"%1$sは仲間を呼んだ！","color":"#FFFF73","with":[{"nbt":"CustomName","entity":"@s","interpret":true,"color":"#FFFFFF"}]}]
#二度とスキルが発動しないようにする
data remove storage mob_data: AI.Turn
