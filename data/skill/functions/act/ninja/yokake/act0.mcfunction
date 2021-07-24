##############################
### 夜駆発動
##############################

execute store result score _ _ run time query daytime
execute if score _ _ matches 05000..07000 run scoreboard players set _ Calc 1
execute if score _ _ matches 07000..09000 run scoreboard players set _ Calc 2
execute if score _ _ matches 09000..11000 run scoreboard players set _ Calc 3
execute if score _ _ matches 11000..13000 run scoreboard players set _ Calc 4
execute if score _ _ matches 13000..15000 run scoreboard players set _ Calc 5
execute if score _ _ matches 15000..17000 run scoreboard players set _ Calc 6
execute if score _ _ matches 17000..19000 run scoreboard players set _ Calc 7
execute if score _ _ matches 19000..21000 run scoreboard players set _ Calc 6
execute if score _ _ matches 21000..23000 run scoreboard players set _ Calc 5
execute if score _ _ matches 23000..24000 run scoreboard players set _ Calc 4
execute if score _ _ matches 00000..01000 run scoreboard players set _ Calc 4
execute if score _ _ matches 01000..03000 run scoreboard players set _ Calc 3
execute if score _ _ matches 03000..05000 run scoreboard players set _ Calc 2
execute if score _ Level matches 2 run scoreboard players add _ Calc 1
execute if score _ Level matches 3 run scoreboard players add _ Calc 2

execute unless score @s SneakTime matches 1.. run function skill:act/ninja/yokake/fork
execute if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/ninja/yokake/fork
