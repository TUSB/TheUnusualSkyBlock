#> item:sign/set/bamboo
##############################
### 看板設置---bamboo
##############################

execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=168.75..-168.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=0] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-168.75..-146.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=1] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-146.25..-123.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=2] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-123.75..-101.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=3] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-101.25..-78.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=4] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-78.75..-56.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=5] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-56.25..-33.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=6] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-33.75..-11.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=7] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-11.25..11.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=8] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=11.25..33.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=9] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=33.75..56.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=10] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=56.25..78.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=11] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=78.75..101.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=12] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=101.25..123.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=13] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=123.75..146.25] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=14] keep
execute unless block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=146.25..168.75] run setblock ~ ~ ~ minecraft:bamboo_sign[rotation=15] keep

execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=0..45] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=0..45] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=0..45] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=45..90] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=45..90] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=45..90] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=90..135] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=90..135] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=90..135] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=135..180] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=135..180] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=135..180] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-180..-135] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-180..-135] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-180..-135] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-135..-90] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-135..-90] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-135..-90] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-90..-45] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-90..-45] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-90..-45] unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-45..0] unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-45..0] unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
execute if block ~ ~-1 ~ minecraft:air if entity @s[y_rotation=-45..0] unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute unless block ~ ~ ~1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=north] keep
execute unless block ~-1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=east] keep
execute unless block ~ ~ ~-1 minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=south] keep
execute unless block ~1 ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bamboo_wall_sign[facing=west] keep
