#定数
scoreboard players set _ _ 10000
#軽減前ダメージ総和
scoreboard players set @s _ 0
#炎
scoreboard players set # _ 0
scoreboard players operation _ Calc = _ ElementFire
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Fire] store success score # _ if score @s ElementFire matches ..199 run scoreboard players add @s ElementFire 200
scoreboard players operation _ Calc *= @s ElementFire
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Fire] if score # _ matches 1 run scoreboard players remove @s ElementFire 200
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#氷
scoreboard players set # _ 0
scoreboard players operation _ Calc = _ ElementIce
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Ice] store success score # _ if score @s ElementIce matches ..199 run scoreboard players add @s ElementIce 200
scoreboard players operation _ Calc *= @s ElementIce
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Ice] if score # _ matches 1 run scoreboard players remove @s ElementIce 200
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#雷
scoreboard players set # _ 0
scoreboard players operation _ Calc = _ ElementLightning
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Lightning] store success score # _ if score @s ElementLightning matches ..199 run scoreboard players add @s ElementLightning 200
scoreboard players operation _ Calc *= @s ElementLightning
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Lightning] if score # _ matches 1 run scoreboard players remove @s ElementLightning 200
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#光
scoreboard players set # _ 0
scoreboard players operation _ Calc = _ ElementLight
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Light] store success score # _ if score @s ElementLight matches ..199 run scoreboard players add @s ElementLight 200
scoreboard players operation _ Calc *= @s ElementLight
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Light] if score # _ matches 1 run scoreboard players remove @s ElementLight 200
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
scoreboard players operation _ Calc /= _ _
scoreboard players operation @s _ += _ Calc
#闇
scoreboard players set # _ 0
scoreboard players operation _ Calc = _ ElementDark
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Dark] store success score # _ if score @s ElementDark matches ..199 run scoreboard players add @s ElementDark 200
scoreboard players operation _ Calc *= @s ElementDark
execute if entity @a[distance=..32,scores={Burst=0..,Job=6},tag=BurstWeek.Dark] if score # _ matches 1 run scoreboard players remove @s ElementDark 200
scoreboard players operation _ Calc *= $ElementDamageAdd ElementDamageAdd
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
#CallOnAttack用に与えた属性を保存
execute if entity @s[tag=CallOnDamage] run function skill:damage/apply/save_elements

#潜在能力値リセット
scoreboard players set $ElementDamageAdd ElementDamageAdd 100
