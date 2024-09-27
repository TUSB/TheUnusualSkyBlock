###腐るものの個数確認
execute store result score _ _ run clear @s #area:food_rot_list 0

###削除
execute if score _ _ matches 1.. run clear @s #area:food_rot_list 1
execute if score _ _ matches 1.. run give @s rotten_flesh
