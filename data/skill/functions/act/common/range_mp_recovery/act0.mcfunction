
### 範囲MP回復 発動

execute if score _ Level matches 1 run scoreboard players set _ _ 25
execute if score _ Level matches 2 run scoreboard players set _ _ 50
execute if score _ Level matches 3 run scoreboard players set _ _ 100
execute if score _ Level matches 4 run scoreboard players set _ _ 200

scoreboard players operation @a[distance=..16] MP += _ _
execute as @a[distance=..16] run scoreboard players operation @s MP < @s MPMax
execute as @a[distance=..16] run function player:mp_bar/set

execute as @a[distance=..16] at @s run function makeup:skill/act/common/range_mp_recovery/act0
