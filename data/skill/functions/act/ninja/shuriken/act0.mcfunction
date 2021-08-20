##############################
### 手裏剣発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:4}].Damage
execute if score _ Level matches 5 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:5}].Damage
function skill:damage/add/skill/magic

#雪玉を召喚
execute anchored eyes run summon snowball ^ ^ ^0.5 {Tags:[Skill,Shuriken],NoGravity:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}}}
execute as @e[tag=Shuriken,tag=!Initialized,distance=..3] run function calc:throw_projectile/

#ダメージと装備を保存
execute as @e[tag=Shuriken,tag=!Initialized,distance=..3] run function player:trigger/projectile/save

#演出
function makeup:skill/act/ninja/shuriken/act0
