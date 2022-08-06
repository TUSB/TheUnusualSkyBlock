
execute if score _ Level matches ..99 run stopsound @a[distance=..16] master minecraft:ui.toast.challenge_complete
execute if score _ Level matches ..99 run playsound minecraft:ui.toast.challenge_complete master @a[distance=..16] ~ ~ ~ 0.8 2
execute if score _ Level matches 100.. run stopsound @a[distance=..16] master minecraft:ui.toast.in
execute if score _ Level matches 100.. run playsound minecraft:ui.toast.in master @a[distance=..16] ~ ~ ~ 2 2
execute if score _ Level matches 100.. run playsound minecraft:ui.toast.in master @a[distance=..16] ~ ~ ~ 2 2
execute if score _ Level matches 100.. run playsound minecraft:ui.toast.in master @a[distance=..16] ~ ~ ~ 2 2
