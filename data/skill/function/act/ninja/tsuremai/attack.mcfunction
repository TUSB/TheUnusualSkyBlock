#> skill:act/ninja/tsuremai/attack
#
# 連舞発動
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:4}].Damage

# minecraft:effect.strengthの1/3を取得
execute store result score @s _ run attribute @s minecraft:attack_damage modifier value get minecraft:effect.strength 0.334

# 攻撃力上昇付与マクロ effectlevelは23まで
execute if score @s _ matches 24.. run scoreboard players set @s _ 24
execute store result storage skill: macro int 1 run scoreboard players get @s _
effect clear @s minecraft:strength
function skill:act/ninja/tsuremai/effect_macro with storage skill:
data remove storage skill: macro

scoreboard players add @s _ 1

# 演出
function makeup:skill/act/ninja/tsuremai/attack
