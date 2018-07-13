##############################
### 夜駆発動
##############################

execute store result score $Time Global run time query daytime
execute if score $Time Global matches 05000..07000 run scoreboard players set $Level Global 1
execute if score $Time Global matches 07000..09000 run scoreboard players set $Level Global 2
execute if score $Time Global matches 09000..11000 run scoreboard players set $Level Global 3
execute if score $Time Global matches 11000..13000 run scoreboard players set $Level Global 4
execute if score $Time Global matches 13000..15000 run scoreboard players set $Level Global 5
execute if score $Time Global matches 15000..17000 run scoreboard players set $Level Global 6
execute if score $Time Global matches 17000..19000 run scoreboard players set $Level Global 7
execute if score $Time Global matches 19000..21000 run scoreboard players set $Level Global 6
execute if score $Time Global matches 21000..23000 run scoreboard players set $Level Global 5
execute if score $Time Global matches 23000..24000 run scoreboard players set $Level Global 4
execute if score $Time Global matches 00000..01000 run scoreboard players set $Level Global 4
execute if score $Time Global matches 01000..03000 run scoreboard players set $Level Global 3
execute if score $Time Global matches 03000..05000 run scoreboard players set $Level Global 2
execute if score @s SupportSkill matches 22062 run scoreboard players add $Level Global 1
execute if score @s SupportSkill matches 22063 run scoreboard players add $Level Global 2

execute unless score @s SneakTime matches 1.. run function skill_manager:ninja/yokake/fork
execute if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:ninja/yokake/fork

###---演出---Start
###---演出---End
