#Function
#ランダムで特殊デバフ以外のデバフを掛ける
execute store result score _ Random run function calc:random
scoreboard players set _ _ 13
scoreboard players operation _ Random %= _ _
execute if score _ Random matches 0 run effect give @a[distance=..0.5,sort=nearest,limit=1] slowness 20 2 true
execute if score _ Random matches 1 run effect give @a[distance=..0.5,sort=nearest,limit=1] mining_fatigue 20 2 true
execute if score _ Random matches 2 run effect give @a[distance=..0.5,sort=nearest,limit=1] instant_damage 1 2 true
execute if score _ Random matches 3 run effect give @a[distance=..0.5,sort=nearest,limit=1] nausea 20 0 true
execute if score _ Random matches 4 run effect give @a[distance=..0.5,sort=nearest,limit=1] blindness 20 2 true
execute if score _ Random matches 5 run effect give @a[distance=..0.5,sort=nearest,limit=1] hunger 20 2 true
execute if score _ Random matches 6 run effect give @a[distance=..0.5,sort=nearest,limit=1] weakness 20 2 true
execute if score _ Random matches 7 run effect give @a[distance=..0.5,sort=nearest,limit=1] poison 20 2 true
execute if score _ Random matches 8 run effect give @a[distance=..0.5,sort=nearest,limit=1] wither 20 2 true
execute if score _ Random matches 9 run effect give @a[distance=..0.5,sort=nearest,limit=1] levitation 20 2 true
execute if score _ Random matches 10 run effect give @a[distance=..0.5,sort=nearest,limit=1] slow_falling 20 2 true
execute if score _ Random matches 11 run effect give @a[distance=..0.5,sort=nearest,limit=1] darkness 20 0 true
execute if score _ Random matches 12 run effect give @a[distance=..0.5,sort=nearest,limit=1] jump_boost 20 128 true
