#> player:mp_bar/set
# (現在MP*2 / 最大MP) で割合の2倍を出す。
# 100倍で計算する
scoreboard players operation _ MP = @s MP
scoreboard players set _ _ 200
scoreboard players operation _ MP *= _ _
scoreboard players operation _ MP /= @s MPMax
scoreboard players operation _ MP < _ _

#経験値バーに表示
experience add @s -2147483648 levels
experience add @s 40 levels
execute if score _ MP matches 1.. run function player:mp_bar/set_loop
experience add @s -40 levels

scoreboard players operation _ MP = @s MP
execute if score _ MP matches 1.. run function player:mp_bar/set_level

stopsound @a player minecraft:entity.player.levelup
