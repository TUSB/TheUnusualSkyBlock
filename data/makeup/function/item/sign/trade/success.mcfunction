#> makeup:item/sign/trade/success
#
# トレード成功時
#
# @within function item:sign/click/trade

particle minecraft:happy_villager ~ ~0.4 ~ 0.3 0.3 0.3 1 4 force
playsound minecraft:entity.experience_orb.pickup block @a[distance=..16] ~ ~ ~ 0.7 0.5
