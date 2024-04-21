
### マナリフレッシュ発動

execute if score _ Level matches 1 run scoreboard players set _ ManaRefresh 601
execute if score _ Level matches 2 run scoreboard players set _ ManaRefresh 901
execute if score _ Level matches 3 run scoreboard players set _ ManaRefresh 602

function skill:act/black_mage/mana_refresh/apply
execute if score @s SneakTime matches 1.. if score _ Level matches 1 run scoreboard players set _ ManaRefresh 201
execute if score @s SneakTime matches 1.. if score _ Level matches 2 run scoreboard players set _ ManaRefresh 301
execute if score @s SneakTime matches 1.. if score _ Level matches 3 run scoreboard players set _ ManaRefresh 202
execute if score @s SneakTime matches 1.. as @a[distance=0.1..15] at @s run function skill:act/black_mage/mana_refresh/apply
