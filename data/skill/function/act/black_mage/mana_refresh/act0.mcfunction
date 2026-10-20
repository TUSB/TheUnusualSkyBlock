
### マナリフレッシュ発動

execute if score _ Level matches 1 run scoreboard players set _ ManaRefresh 602
execute if score _ Level matches 2 run scoreboard players set _ ManaRefresh 902
execute if score _ Level matches 3 run scoreboard players set _ ManaRefresh 603

function skill:act/black_mage/mana_refresh/apply
execute if score @s SneakTime matches 1.. if score _ Level matches 1 run scoreboard players set _ ManaRefresh 202
execute if score @s SneakTime matches 1.. if score _ Level matches 2 run scoreboard players set _ ManaRefresh 302
execute if score @s SneakTime matches 1.. if score _ Level matches 3 run scoreboard players set _ ManaRefresh 203
execute if score @s SneakTime matches 1.. as @a[distance=0.1..15] at @s run function skill:act/black_mage/mana_refresh/apply
