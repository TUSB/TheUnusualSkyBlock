#Function
execute at @s rotated ~ 0 run function settings:enemy/nether/ground/blow/flamer_baby/attack2

#30%で火だるま
execute store result score _ Random run function calc:random
scoreboard players set _ _ 10
scoreboard players operation _ Random %= _ _
execute if score _ Random matches ..2 run effect give @a[distance=..0.5,sort=nearest,limit=1] invisibility 10 3 true
