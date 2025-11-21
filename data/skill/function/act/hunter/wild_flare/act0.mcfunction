#> skill:act/hunter/wild_flare/act0
#
# ワイルドフレア発動

# 矢にデータを保存
execute as @e[distance=..5,type=#minecraft:arrows,tag=!Initialized,sort=nearest,limit=1] run data merge entity @s {PortalCooldown:2,Tags:[WildFlareSeed,CooldownRequired]}
scoreboard players operation @e[distance=..5,type=#minecraft:arrows,tag=!Initialized,sort=nearest,limit=1] Level = _ Level

function makeup:skill/act/hunter/wild_flare/act0
