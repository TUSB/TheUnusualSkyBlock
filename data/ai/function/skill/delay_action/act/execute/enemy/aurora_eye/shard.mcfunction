#> skill:enemy/delay_action/act/execute/enemy/aurora_eye/shard
# @within function skill:enemy/delay_action/act/execute/enemy/aurora_eye/

execute store result score _ _ run data get storage mob_data: ExecutingAction.Stage

###詠唱演出 Stage0で終了なので最大数から開始
execute if score _ _ matches 70 run tp @s ^ ^ ^-0.20 ~ ~
execute if score _ _ matches 69 run tp @s ^ ^ ^-0.18 ~ ~ 
execute if score _ _ matches 68 run tp @s ^ ^ ^-0.16 ~ ~ 
execute if score _ _ matches 67 run tp @s ^ ^ ^-0.14 ~ ~ 
execute if score _ _ matches 66 run tp @s ^ ^ ^-0.12 ~ ~ 
execute if score _ _ matches 65 run tp @s ^ ^ ^-0.10 ~ ~ 
execute if score _ _ matches 64 run tp @s ^ ^ ^-0.08 ~ ~ 
execute if score _ _ matches 63 run tp @s ^ ^ ^-0.06 ~ ~ 
execute if score _ _ matches 62 run tp @s ^ ^ ^-0.04 ~ ~ 
execute if score _ _ matches 61 run tp @s ^ ^ ^-0.02 ~ ~ 
execute if score _ _ matches 60 run tp @s ^ ^ ^0.0 ~ ~ 
execute if score _ _ matches 59 run tp @s ^ ^ ^0.02 ~ ~ 
execute if score _ _ matches 58 run tp @s ^ ^ ^0.04 ~ ~ 
execute if score _ _ matches 57 run tp @s ^ ^ ^0.06 ~ ~
execute if score _ _ matches 56 run tp @s ^ ^ ^0.08 ~ ~ 
execute if score _ _ matches 55 run tp @s ^ ^ ^0.1 ~ ~
execute if score _ _ matches 54 run tp @s ^ ^ ^0.12 ~ ~ 
execute if score _ _ matches 53 run tp @s ^ ^ ^0.14 ~ ~ 
execute if score _ _ matches 52 run tp @s ^ ^ ^0.16 ~ ~ 
execute if score _ _ matches 51 run tp @s ^ ^ ^0.18 ~ ~ 
execute if score _ _ matches 50 run tp @s ^ ^ ^0.2 ~ ~ 
execute if score _ _ matches 49 run tp @s ^ ^ ^0.22 ~ ~ 
execute if score _ _ matches 48 run tp @s ^ ^ ^0.24 ~ ~ 
execute if score _ _ matches 47 run tp @s ^ ^ ^0.26 ~ ~ 
execute if score _ _ matches 46 run tp @s ^ ^ ^0.28 ~ ~ 
execute if score _ _ matches 45 run tp @s ^ ^ ^0.3 ~ ~
execute if score _ _ matches 44 run tp @s ^ ^ ^0.33 ~ ~ 
execute if score _ _ matches 43 run tp @s ^ ^ ^0.36 ~ ~ 
execute if score _ _ matches 42 run tp @s ^ ^ ^0.39 ~ ~ 
execute if score _ _ matches 41 run tp @s ^ ^ ^0.42 ~ ~ 
execute if score _ _ matches 40 run tp @s ^ ^ ^0.45 ~ ~ 
execute if score _ _ matches 39 run tp @s ^ ^ ^0.48 ~ ~ 
execute if score _ _ matches 38 run tp @s ^ ^ ^0.51 ~ ~ 
execute if score _ _ matches 37 run tp @s ^ ^ ^0.54 ~ ~ 
execute if score _ _ matches 36 run tp @s ^ ^ ^0.57 ~ ~ 
execute if score _ _ matches ..35 run tp @s ^ ^ ^0.6 ~ ~ 

playsound block.amethyst_cluster.break hostile @a[distance=..32] ~ ~ ~ 0.75 2 0 
