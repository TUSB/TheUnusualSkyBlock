#> player:mp_bar/set_level
execute if score _ MP matches 2048.. run experience add @s 2048 levels
execute if score _ MP matches 2048.. run scoreboard players remove _ MP 2048

execute if score _ MP matches 1024.. run experience add @s 1024 levels
execute if score _ MP matches 1024.. run scoreboard players remove _ MP 1024

execute if score _ MP matches 512.. run experience add @s 512 levels
execute if score _ MP matches 512.. run scoreboard players remove _ MP 512

execute if score _ MP matches 256.. run experience add @s 256 levels
execute if score _ MP matches 256.. run scoreboard players remove _ MP 256

execute if score _ MP matches 128.. run experience add @s 128 levels
execute if score _ MP matches 128.. run scoreboard players remove _ MP 128

execute if score _ MP matches 64.. run experience add @s 64 levels
execute if score _ MP matches 64.. run scoreboard players remove _ MP 64

execute if score _ MP matches 32.. run experience add @s 32 levels
execute if score _ MP matches 32.. run scoreboard players remove _ MP 32

execute if score _ MP matches 16.. run experience add @s 16 levels
execute if score _ MP matches 16.. run scoreboard players remove _ MP 16

execute if score _ MP matches 8.. run experience add @s 8 levels
execute if score _ MP matches 8.. run scoreboard players remove _ MP 8

execute if score _ MP matches 4.. run experience add @s 4 levels
execute if score _ MP matches 4.. run scoreboard players remove _ MP 4

execute if score _ MP matches 2.. run experience add @s 2 levels
execute if score _ MP matches 2.. run scoreboard players remove _ MP 2

execute if score _ MP matches 1.. run experience add @s 1 levels
execute if score _ MP matches 1.. run scoreboard players remove _ MP 1

execute if score _ MP matches 1.. run function player:mp_bar/set_level
