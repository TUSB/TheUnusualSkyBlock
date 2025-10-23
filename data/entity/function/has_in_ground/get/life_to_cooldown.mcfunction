#> entity:has_in_ground/get/life_to_cooldown
#
# lifeの値をPortalCooldownに変換する
# 返り値は変換値
#

scoreboard players set _ Calc 1159
execute store result score _ _ run data get entity @s life
scoreboard players operation _ Calc -= _ _
return run scoreboard players get _ Calc
