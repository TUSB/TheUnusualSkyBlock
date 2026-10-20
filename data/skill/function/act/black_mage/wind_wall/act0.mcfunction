#> skill:act/black_mage/wind_wall/act0

# ウィンドウォール発動

# Lv1:0~1200 Lv2:10000~11200
execute if score _ Level matches 1 run scoreboard players set @s WindWall 1200
execute if score _ Level matches 2 run scoreboard players set @s WindWall 11200

execute if score @s SneakTime matches 1.. if score _ Level matches 1 run scoreboard players set @a[distance=..15] WindWall 600
execute if score @s SneakTime matches 1.. if score _ Level matches 2 run scoreboard players set @s[distance=..15] WindWall 10600

# ノックバック耐性をゼロにする
attribute @s minecraft:knockback_resistance modifier add minecraft:00000000-0020-0000-0000-000000000000 -1.0 add_multiplied_base

function makeup:skill/act/black_mage/wind_wall/act0
