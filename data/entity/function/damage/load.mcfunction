#> entity:damage/load
# 0.01倍して読込
execute store result storage entity: damage.physical double 0.01 run scoreboard players get @s Attack
execute store result storage entity: damage.magic double 0.01 run scoreboard players get @s MagicAttack
execute store result storage entity: damage.unreasonable double 0.01 run scoreboard players get @s UnreasonableAttack
execute store result storage entity: damage.hit byte 1 if entity @s[tag=HitDamage]
