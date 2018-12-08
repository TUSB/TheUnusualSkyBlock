



# function calc_manager:get/rotation1
# scoreboard players operation $Theta Global = $RY1 Global

# function calc_manager:get/trigonometric_ratio

# execute if score $Cos Global matches 0.. at @e[tag=CircleCore,sort=nearest,limit=1] facing entity @s feet positioned ^ ^10 ^ run tp @s ~ ~ ~
# execute if score $Cos Global matches ..-1 at @e[tag=CircleCore,sort=nearest,limit=1] facing entity @s feet positioned ^ ^-10 ^ run tp @s ~ ~ ~
# function calc_manager:get/pos1
# tp @s ~ ~ ~ ~ ~

# execute if score $Sin Global matches 0.. at @e[tag=CircleCore,sort=nearest,limit=1] facing entity @s feet positioned ^10 ^ ^ run tp @s ~ ~ ~
# execute if score $Sin Global matches ..-1 at @e[tag=CircleCore,sort=nearest,limit=1] facing entity @s feet positioned ^-10 ^ ^ run tp @s ~ ~ ~
# function calc_manager:get/pos2

# execute if score $Sin Global matches ..-1 run scoreboard players operation $Sin Global *= $-1 Const
# execute if score $Cos Global matches ..-1 run scoreboard players operation $Cos Global *= $-1 Const

# scoreboard players operation $Weight2 Global = $Sin Global
# scoreboard players operation $Weight1 Global = $Cos Global

# function calc_manager:split/1-2

# function calc_manager:set/pos1
# execute at @e[tag=CircleCore,sort=nearest,limit=1] facing entity @s feet run particle minecraft:heart ^ ^ ^10 0 0 0 0 1 force @a[tag=ShowParticles]
# tp @s ~ ~ ~ ~ ~

# function calc_manager:get/rotation1
# scoreboard players operation $RY1 Global += $RX1 Global
# function calc_manager:set/rotation1
