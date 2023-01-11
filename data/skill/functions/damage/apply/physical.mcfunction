#軽減後ダメージ = ダメージ^2/(ダメージ+防御力)
scoreboard players operation _ Calc = _ Damage
scoreboard players operation _ Calc *= _ Calc
scoreboard players operation _ _ = _ Damage
scoreboard players operation _ _ += @s Defense
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc

tag @s[tag=CallOnDamage] add ReceivedPhysicalDamage