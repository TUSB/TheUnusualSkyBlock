##############################
### エンティティ死亡チェック
##############################

tag @s add Garbage

execute if entity @s[tag=HasRaise] run function skill:enemy/reraise/death_cancel

execute if entity @s[tag=Garbage] run function entity:mob_death/act