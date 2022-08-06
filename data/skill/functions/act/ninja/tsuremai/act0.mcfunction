
### 連舞発動

#strengthのmodifierのUUIDは必ず 648d7064-6a60-4f59-8abe-c2c23a6dd7a9 である(v1.17-1.17.1)
execute store result score @s _ run attribute @s minecraft:generic.attack_damage modifier value get 648d7064-6a60-4f59-8abe-c2c23a6dd7a9
scoreboard players set _ Calc 3
scoreboard players operation @s _ /= _ Calc

effect clear @s minecraft:strength
execute if score @s _ matches 0 run effect give @s minecraft:strength 5 0
execute if score @s _ matches 1 run effect give @s minecraft:strength 5 1
execute if score @s _ matches 2 run effect give @s minecraft:strength 5 2
execute if score @s _ matches 3 run effect give @s minecraft:strength 5 3
execute if score @s _ matches 4 run effect give @s minecraft:strength 5 4
execute if score @s _ matches 5 run effect give @s minecraft:strength 5 5
execute if score @s _ matches 6 run effect give @s minecraft:strength 5 6
execute if score @s _ matches 7 run effect give @s minecraft:strength 5 7
execute if score @s _ matches 8 run effect give @s minecraft:strength 5 8
execute if score @s _ matches 9 run effect give @s minecraft:strength 5 9
execute if score @s _ matches 10 run effect give @s minecraft:strength 5 10
execute if score @s _ matches 11 run effect give @s minecraft:strength 5 11
execute if score @s _ matches 12 run effect give @s minecraft:strength 5 12
execute if score @s _ matches 13 run effect give @s minecraft:strength 5 13
execute if score @s _ matches 14 run effect give @s minecraft:strength 5 14
execute if score @s _ matches 15 run effect give @s minecraft:strength 5 15
execute if score @s _ matches 16 run effect give @s minecraft:strength 5 16
execute if score @s _ matches 17 run effect give @s minecraft:strength 5 17
execute if score @s _ matches 18 run effect give @s minecraft:strength 5 18
execute if score @s _ matches 19 run effect give @s minecraft:strength 5 19
execute if score @s _ matches 20 run effect give @s minecraft:strength 5 20
execute if score @s _ matches 21 run effect give @s minecraft:strength 5 21
execute if score @s _ matches 22 run effect give @s minecraft:strength 5 22
execute if score @s _ matches 23.. run effect give @s minecraft:strength 5 23

scoreboard players add @s _ 1

#演出
function makeup:skill/act/ninja/tsuremai/act0

#スキルレベルによるダメージ追加
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:4}].Damage
function skill:damage/add/skill/weapon

scoreboard players remove @s _ 1
scoreboard players set _ Calc 100
execute store result score _ Calc run scoreboard players operation @s _ *= _ Calc
function skill:damage/modify

#ダメージ付与
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/
