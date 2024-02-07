#スポナー削除
tag @e[distance=..0.1,tag=Spawner] add Garbage
#経験値を出す
execute store result score _ _ run data get entity @s item.tag.Experience
execute if score _ _ matches 1.. run function enemy:break_spawner/give_exp
#v13Alpha 達成率
execute if entity @s[tag=v13Alpha] run function enemy:break_spawner/alpha_advancements/add
#演出
function makeup:enemy/break_spawner/
