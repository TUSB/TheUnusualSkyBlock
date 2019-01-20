##############################
### ワイルドカード 前方マーク
##############################

###---演出---Start
execute if score @s WildCard matches 10000000..10999999 anchored eyes run particle minecraft:entity_effect ^ ^ ^ 0.2 0.2 0.2 10000000 2 force @s[tag=ShowParticles]
execute if score @s WildCard matches 11000000..11999999 anchored eyes run particle minecraft:entity_effect ^ ^ ^4 0.2 0.2 0.2 10000000 2 force @s[tag=ShowParticles]
execute if score @s WildCard matches 12000000..12999999 anchored eyes run particle minecraft:entity_effect ^ ^ ^8 0.2 0.2 0.2 10000000 2 force @s[tag=ShowParticles]
execute if score @s WildCard matches 13000000..13999999 anchored eyes run particle minecraft:entity_effect ^ ^ ^16 0.2 0.2 0.2 10000000 2 force @s[tag=ShowParticles]
execute if score @s WildCard matches 14000000..14999999 anchored eyes run particle minecraft:entity_effect ^ ^ ^32 0.2 0.2 0.2 10000000 2 force @s[tag=ShowParticles]
###---演出---End
