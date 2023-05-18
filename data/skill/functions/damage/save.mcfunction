scoreboard players operation @s Damage += _ Damage
scoreboard players operation @s ElementFire = _ ElementFire
scoreboard players operation @s ElementIce = _ ElementIce
scoreboard players operation @s ElementLightning = _ ElementLightning
scoreboard players operation @s ElementLight = _ ElementLight
scoreboard players operation @s ElementDark = _ ElementDark
scoreboard players operation @s ElementDamageAdd = $ElementDamageAdd ElementDamageAdd
execute if data storage skill: Damage{Hit:1b} run tag @s add HitDamage
