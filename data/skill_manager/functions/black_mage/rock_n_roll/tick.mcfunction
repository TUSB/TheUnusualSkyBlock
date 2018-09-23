##############################
### ロックンロール回転
##############################

scoreboard players operation $ID Global = @s ID


# execute as @e[tag=RockNRoll] if score @s ID = $ID Global facing entity @s feet rotated as @s rotated ~ 0 positioned ^ ^ ^-2.3 rotated as @s run tp @s ~ ~ ~ ~5 ~9.9
# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s if entity @s[x_rotation=80..90] facing ^ ^ ^-1 run tp @s ~ ~ ~ ~180 ~
# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s positioned ^ ^ ^2 run particle heart ~ ~ ~ 0 0 0 0 1 force



execute as @e[tag=RockNRoll] if score @s ID = $ID Global facing entity @s feet rotated ~5 0 positioned ^ ^ ^2.3 run tp @s ~ ~ ~

# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s run tp @s ~ ~ ~ ~ ~9.5

# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s if entity @s[x_rotation=80..90] run tp @s ~ ~ ~ ~5 ~9.9



# # execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s if entity @s[x_rotation=80..90] facing ^ ^ ^-1 run tp @s ~ ~ ~ ~180 ~
# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s positioned ^ ^ ^2 run particle heart ~ ~ ~ 0 0 0 0 1 force

# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s run tp @s ~ ~ ~ ~25 0
# execute as @e[tag=RockNRoll] if score @s ID = $ID Global facing entity @s feet rotated ~5 0 positioned ^ ^ ^3.5 run tp @s ~ ~ ~
# execute as @e[tag=RockNRoll] if score @s ID = $ID Global at @s positioned ^ ^ ^2 run particle heart ~ ~ ~ 0 0 0 0 1 force





# execute as @e[tag=RockNRoll] if score @s ID = $ID Global facing entity @s feet rotated ~5 0 positioned ^ ^ ^2.3 run function skill_manager:black_mage/rock_n_roll/attack




###---演出---Start
###---演出---End
