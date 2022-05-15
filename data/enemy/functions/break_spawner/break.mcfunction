#スポナー削除
execute align xyz run tag @e[dy=0,tag=Spawner] add Garbage
#経験値を出す
execute store result score _ _ run data get entity @s ArmorItems[0].tag.Experience
execute if score _ _ matches 1.. run function enemy:break_spawner/nether_star
#演出
function makeup:enemy/break_spawner/
