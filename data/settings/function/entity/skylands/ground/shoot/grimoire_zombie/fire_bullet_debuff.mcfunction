#Function
# 50%で火だるまにする
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 2
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..0 run effect give @a[distance=..0.5,predicate=entity:player,sort=nearest,limit=1] invisibility 10 3 true
