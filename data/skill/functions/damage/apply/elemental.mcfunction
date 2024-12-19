#バースト - 召喚士
execute if entity @a[distance=..32,scores={Burst=0..,Job=6}] run function skill:burst/summoner/element/swap
#定数
scoreboard players set _ _ 10000
#軽減前ダメージ総和
scoreboard players set @s _ 0
#炎
scoreboard players operation _ Calc = _ ElementFire
scoreboard players operation _ Calc *= @s ElementFire
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#氷
scoreboard players operation _ Calc = _ ElementIce
scoreboard players operation _ Calc *= @s ElementIce
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#雷
scoreboard players operation _ Calc = _ ElementLightning
scoreboard players operation _ Calc *= @s ElementLightning
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#光
scoreboard players operation _ Calc = _ ElementLight
scoreboard players operation _ Calc *= @s ElementLight
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#闇
scoreboard players operation _ Calc = _ ElementDark
scoreboard players operation _ Calc *= @s ElementDark
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc

#軽減後ダメージ = ダメージ^2/(ダメージ+防御力)
scoreboard players operation _ Calc = @s _
scoreboard players operation _ Calc *= _ Calc
scoreboard players operation _ _ = @s _
execute if score @s _ matches 1.. run scoreboard players operation _ _ += @s SpecialDefense
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s Damage += _ Calc

execute unless data storage skill: Damage{Hit:1b} run scoreboard players operation @s StoredDamage += _ Calc
#与えた属性を保存
function skill:damage/apply/save_elements

#バースト - 召喚士  リセット
execute if entity @a[distance=..32,scores={Burst=0..,Job=6}] run function skill:burst/summoner/element/swap
