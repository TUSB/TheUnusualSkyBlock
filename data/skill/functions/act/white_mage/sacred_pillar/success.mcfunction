
### セイクリッドピラーダメージあり

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"セイクリッドピラー",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"セイクリッドピラー",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"セイクリッドピラー",Level:3}].Damage
function skill:damage/add/skill/magic

#ダメージ補正
scoreboard players operation _ Calc = _ SpecialAttack
  execute if data storage main: difficult{world:"debug"} run tellraw @a ["[Debug]セイクリッドピラー倍率(x100) : ",{"score":{"name":"_","objective":"Calc"}}]
function skill:damage/modify
function skill:damage/save
execute if score _ Level matches 1 run data modify entity @s Duration set value 400
execute if score _ Level matches 2 run data modify entity @s Duration set value 600
execute if score _ Level matches 3 run data modify entity @s Duration set value 800

scoreboard players operation @s Level = _ Level

#演出
function makeup:skill/act/white_mage/sacred_pillar/success
