#> makeup:job/level_up/sound
execute if score _ Level matches ..99 run stopsound @a[distance=..16] player minecraft:ui.toast.challenge_complete
execute if score _ Level matches ..99 run playsound minecraft:ui.toast.challenge_complete player @a[distance=..16] ~ ~ ~ 0.8 2
execute if score _ Level matches 100.. run stopsound @a[distance=..16] player minecraft:ui.toast.in
execute if score _ Level matches 100.. run playsound minecraft:ui.toast.in player @a[distance=..16] ~ ~ ~ 2 2
execute if score _ Level matches 100.. run playsound minecraft:ui.toast.in player @a[distance=..16] ~ ~ ~ 2 2
execute if score _ Level matches 100.. run playsound minecraft:ui.toast.in player @a[distance=..16] ~ ~ ~ 2 2
