#> skill:act/ninja/hyoka_ryoran/act1
#
# 氷華繚乱 炸裂

# ダメージをロード
execute as @e[limit=1,distance=..0.01,tag=HyokaRyoranMarker] run function skill:damage/load
# ダメージを付与 距離によって変動、最低で約0.5倍
execute at @s positioned ~ ~-1 ~ as @e[distance=..2,tag=Enemy] run function skill:damage/apply/
scoreboard players set _ Calc 79
function skill:damage/modify
execute at @s positioned ~ ~-1 ~ as @e[distance=2.001..4,tag=Enemy] run function skill:damage/apply/
scoreboard players set _ Calc 79
function skill:damage/modify
execute at @s positioned ~ ~-1 ~ as @e[distance=4.001..6,tag=Enemy] run function skill:damage/apply/
scoreboard players set _ Calc 79
function skill:damage/modify
execute at @s positioned ~ ~-1 ~ as @e[distance=6.001..8,tag=Enemy] run function skill:damage/apply/

# 接地していなければ落下ダメージ防止
execute if entity @s[nbt={OnGround:0b}] run effect give @s slow_falling 5 0
effect give @s slow_falling 5 0
# 演出
rotate @e[limit=1,distance=..0.01,tag=HyokaRyoranStand] ~ 0
execute as @e[limit=1,distance=..0.01,tag=HyokaRyoranStand] at @s run function makeup:skill/act/ninja/hyoka_ryoran/act1

kill @e[limit=1,distance=..0.01,tag=HyokaRyoranMarker]
kill @e[limit=1,distance=..0.01,tag=HyokaRyoranStand]
tag @s remove HyokaRyoran
scoreboard players reset @s HyokaRyoranTimer
