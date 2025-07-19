#> skill:act/ninja/tsuremai/attack
#
# 連舞発動

#minecraft:effect.strengthの1/3を取得
execute store result score @s _ run attribute @s minecraft:attack_damage modifier value get minecraft:effect.strength 0.334

# 攻撃力上昇付与マクロ effectlevelは23まで
execute if score @s _ matches 24.. run scoreboard players set @s _ 24
execute store result storage skill: macro int 1 run scoreboard players get @s _
execute if data storage skill: {macro:24} run data modify storage skill: macro set value 23
effect clear @s minecraft:strength
function skill:act/ninja/tsuremai/effect_macro with storage skill:
data remove storage skill: macro

scoreboard players add @s _ 1

#演出
function makeup:skill/act/ninja/tsuremai/attack

#スキルレベルによるダメージ追加
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"連舞",Level:4}].Damage

#ダメージ付与
#同時に近接スキル発動の場合そちらでダメージ付与するためここでは行わない
#付与後は近接スキルフラグを付与してダメージ重複を防ぐ
execute unless data storage item: Item.tag.Skill.Damage{melee:1b} at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/
execute unless data storage item: Item.tag.Skill.Damage{melee:1b} run data modify storage item: Item.tag.Skill.Damage.melee set value 1b
