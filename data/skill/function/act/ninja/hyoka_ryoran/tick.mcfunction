#> skill:act/ninja/hyoka_ryoran/tick
#
# 氷華繚乱 炸裂待機
scoreboard players remove @s HyokaRyoranTimer 1

# 空中で止める 
execute at @e[limit=1,sort=nearest,tag=HyokaRyoranMarker] run tp @s ~ ~ ~

execute unless score @s HyokaRyoranTimer matches ..0 run return fail

rotate @e[limit=1,distance=..0.01,tag=HyokaRyoranStand] ~ 0
execute at @s run function skill:act/ninja/hyoka_ryoran/act1
