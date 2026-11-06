#> entity:has_in_ground/set/cooldown_to_life
#
# lifeの値をPortalCooldownからの変換値にセットする
#

tag @s remove Flying
execute store result entity @s life short 1 run function entity:has_in_ground/get/cooldown_to_life
