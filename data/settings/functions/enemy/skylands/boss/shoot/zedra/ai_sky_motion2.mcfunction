#Function
## エセ振り子運動
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion
execute if score _ _ matches 34 run tp @s ~ ~0.005 ~
execute if score _ _ matches 33 run tp @s ~ ~0.01 ~
execute if score _ _ matches 32 run tp @s ~ ~0.015 ~
execute if score _ _ matches 31 run tp @s ~ ~0.025 ~
execute if score _ _ matches 30 run tp @s ~ ~0.035 ~
execute if score _ _ matches 26..29 run tp @s ~ ~0.05 ~
execute if score _ _ matches 25 run tp @s ~ ~0.035 ~
execute if score _ _ matches 24 run tp @s ~ ~0.025 ~
execute if score _ _ matches 23 run tp @s ~ ~0.015 ~
execute if score _ _ matches 22 run tp @s ~ ~0.01 ~
execute if score _ _ matches 21 run tp @s ~ ~0.005 ~
execute if score _ _ matches 16 run tp @s ~ ~-0.005 ~
execute if score _ _ matches 15 run tp @s ~ ~-0.01 ~
execute if score _ _ matches 14 run tp @s ~ ~-0.015 ~
execute if score _ _ matches 13 run tp @s ~ ~-0.025 ~
execute if score _ _ matches 12 run tp @s ~ ~-0.035 ~
execute if score _ _ matches 8..11 run tp @s ~ ~-0.05 ~
execute if score _ _ matches 7 run tp @s ~ ~-0.035 ~
execute if score _ _ matches 6 run tp @s ~ ~-0.025 ~
execute if score _ _ matches 5 run tp @s ~ ~-0.015 ~
execute if score _ _ matches 4 run tp @s ~ ~-0.01 ~
execute if score _ _ matches 3 run tp @s ~ ~-0.005 ~
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion
execute if score _ _ matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Motion set value 36
