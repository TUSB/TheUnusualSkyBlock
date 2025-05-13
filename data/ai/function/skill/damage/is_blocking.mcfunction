#> ai:skill/damage/is_blocking
execute if entity @s[distance=..1000] positioned as @s positioned ~ ~1 ~ run function ai:skill/damage/use_shield
execute unless entity @s[distance=..1000] run function score_damage:api/attack
