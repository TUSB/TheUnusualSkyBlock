#Function
#scale
execute on passengers as @s[tag=LifeScouterText] run data modify entity @s transformation.scale[] set from storage mob_data: Call.Scale

#translation
execute on passengers as @s[tag=LifeScouterText] run data modify entity @s transformation.translation[1] set from storage mob_data: Call.Translation_y
