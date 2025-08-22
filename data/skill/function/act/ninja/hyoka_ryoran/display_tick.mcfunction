#> skill:act/ninja/hyoka_ryoran/display_tick
#
# 氷華繚乱 ディスプレイ削除用tick
scoreboard players remove @s HyokaRyoranTimer 1
execute if score @s HyokaRyoranTimer matches ..0 run tag @s add Garbage
