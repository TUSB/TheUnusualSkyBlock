##############################
### 夜駆発動
##############################

execute store result score _ _ run time query daytime

#17:00-19:00=>2 19:00-20:30=>3 20:30-22:00=>4 22:00-23:30=>5 23:30-0:30=>6 0:30-2:00=>5 2:00-3:30=>4 3:30-5:00=>3 5:00-7:00=>2 7:00-17:00=>1
execute if score _ _ matches 11000..13000 run scoreboard players set _ Calc 2
execute if score _ _ matches 13000..14500 run scoreboard players set _ Calc 3
execute if score _ _ matches 14500..16000 run scoreboard players set _ Calc 4
execute if score _ _ matches 16000..17500 run scoreboard players set _ Calc 5
execute if score _ _ matches 17500..18500 run scoreboard players set _ Calc 6
execute if score _ _ matches 18500..20000 run scoreboard players set _ Calc 5
execute if score _ _ matches 20000..21500 run scoreboard players set _ Calc 4
execute if score _ _ matches 21500..23000 run scoreboard players set _ Calc 3
execute if score _ _ matches 23000..24000 run scoreboard players set _ Calc 2
execute if score _ _ matches 00000..01000 run scoreboard players set _ Calc 2
execute if score _ _ matches 01000..11000 run scoreboard players set _ Calc 1
execute if score _ Level matches 2 run scoreboard players add _ Calc 1
execute if score _ Level matches 3 run scoreboard players add _ Calc 2

execute unless score @s SneakTime matches 1.. run function skill:act/ninja/yokake/fork
execute if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/ninja/yokake/fork
