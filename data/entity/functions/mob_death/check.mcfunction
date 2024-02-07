##############################
### エンティティ死亡チェック
##############################

tag @s add Garbage

#ダメージ表示
execute if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:show_damage/

execute if entity @s[tag=HasRaise] run function skill:enemy/reraise/death_cancel

execute if entity @s[tag=Garbage] run function entity:mob_death/act