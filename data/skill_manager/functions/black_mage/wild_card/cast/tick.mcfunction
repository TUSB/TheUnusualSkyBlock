##############################
### ワイルドカード 弾処理
##############################

execute if score @s WildCard matches -1000 run function skill_manager:black_mage/wild_card/cast/trigger
execute if score @s WildCard matches ..-1001 run scoreboard players add @s WildCard 1

###---演出---Start
particle minecraft:entity_effect ~ ~0.2 ~ 0.4 0.4 0.4 10000000 5 force @a[tag=ShowParticles]
###---演出---End
