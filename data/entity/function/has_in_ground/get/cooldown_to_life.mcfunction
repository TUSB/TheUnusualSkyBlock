#> entity:has_in_ground/get/cooldown_to_life
#
# PortalCooldownの値をlifeに変換する
# lifeの猶予は2秒=40tick
# 返り値は変換値
#

execute store result score @s GameTime run time query gametime

scoreboard players set _ Calc 1159
execute store result score _ _ run data get entity @s PortalCooldown
scoreboard players operation _ Calc -= _ _
return run scoreboard players get _ Calc
