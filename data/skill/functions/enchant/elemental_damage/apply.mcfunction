scoreboard players set _ _ 100
#炎
scoreboard players operation _ Calc = _ ElementFire
scoreboard players operation _ Calc *= @s ElementFire
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc
#氷
scoreboard players operation _ Calc = _ ElementCold
scoreboard players operation _ Calc *= @s ElementCold
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc
#雷
scoreboard players operation _ Calc = _ ElementLightning
scoreboard players operation _ Calc *= @s ElementLightning
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc
#光
scoreboard players operation _ Calc = _ ElementLight
scoreboard players operation _ Calc *= @s ElementLight
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc
#闇
scoreboard players operation _ Calc = _ ElementDark
scoreboard players operation _ Calc *= @s ElementDark
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc
