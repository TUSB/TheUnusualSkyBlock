#> entity:has_in_ground/set/life_to_cooldown
#
# PortalCooldownの値に着弾後の経過時間を引いてセットする
#

tag @s add Flying

execute store result score _ GameTime run time query gametime

scoreboard players operation _ GameTime -= @s GameTime
execute store result score _ _ run data get entity @s PortalCooldown
scoreboard players operation _ _ -= _ GameTime
execute store result entity @s PortalCooldown int 1 run scoreboard players add _ _ 1
