scoreboard players operation _ Damage = @s Damage
scoreboard players operation _ ElementFire = @s ElementFire
scoreboard players operation _ ElementIce = @s ElementIce
scoreboard players operation _ ElementLightning = @s ElementLightning
scoreboard players operation _ ElementLight = @s ElementLight
scoreboard players operation _ ElementDark = @s ElementDark
execute store result storage skill: Damage.Hit byte 1 if entity @s[tag=HitDamage]
