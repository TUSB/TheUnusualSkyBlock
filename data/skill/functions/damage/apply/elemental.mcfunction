#定数
scoreboard players set _ _ 10000
#軽減前ダメージ総和
scoreboard players set @s _ 0
#回復演出フラグ
scoreboard players set @s Calc 0
#炎
scoreboard players operation _ Calc = _ ElementFire
scoreboard players operation _ Calc *= @s ElementFire
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
execute if score _ Calc matches ..-1 run scoreboard players set @s Calc 1
scoreboard players operation @s _ += _ Calc
#氷
scoreboard players operation _ Calc = _ ElementIce
scoreboard players operation _ Calc *= @s ElementIce
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
execute if score _ Calc matches ..-1 run scoreboard players set @s Calc 1
scoreboard players operation @s _ += _ Calc
#雷
scoreboard players operation _ Calc = _ ElementLightning
scoreboard players operation _ Calc *= @s ElementLightning
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
execute if score _ Calc matches ..-1 run scoreboard players set @s Calc 1
scoreboard players operation @s _ += _ Calc
#光
scoreboard players operation _ Calc = _ ElementLight
scoreboard players operation _ Calc *= @s ElementLight
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
execute if score _ Calc matches ..-1 run scoreboard players set @s Calc 1
scoreboard players operation @s _ += _ Calc
#闇
scoreboard players operation _ Calc = _ ElementDark
scoreboard players operation _ Calc *= @s ElementDark
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
execute if score _ Calc matches ..-1 run scoreboard players set @s Calc 1
scoreboard players operation @s _ += _ Calc

#軽減後ダメージ = 2×ダメージ^2/(2×ダメージ+防御力)
scoreboard players operation _ Calc = @s _
scoreboard players operation _ Calc *= _ Calc
scoreboard players operation _ Calc += _ Calc
scoreboard players operation _ _ = @s _
scoreboard players operation _ _ += _ _
execute if score @s _ matches 1.. run scoreboard players operation _ _ += @s SpecialDefense
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc
tellraw @p [{"text":""},{"score":{"name":"@s","objective":"Damage"}}]
#回復演出
execute if score @s Calc matches 1 run function makeup:skill/damage/heal
#CallOnAttack用に与えた属性を保存
execute if entity @s[tag=CallOnDamage] run function skill:damage/apply/save_elements

#潜在能力値リセット
scoreboard players set $ElementDamageAdd ElementDamageAdd 100
