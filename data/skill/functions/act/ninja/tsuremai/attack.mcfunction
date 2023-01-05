
### 連舞発動

#strengthのmodifierのUUIDは必ず 648d7064-6a60-4f59-8abe-c2c23a6dd7a9 である(v1.17-1.17.1)
execute store result score @s _ run attribute @s minecraft:generic.attack_damage modifier value get 648d7064-6a60-4f59-8abe-c2c23a6dd7a9 0.334

effect clear @s minecraft:strength
effect give @s[scores={_=0}] minecraft:strength 5 0
effect give @s[scores={_=1}] minecraft:strength 5 1
effect give @s[scores={_=2}] minecraft:strength 5 2
effect give @s[scores={_=3}] minecraft:strength 5 3
effect give @s[scores={_=4}] minecraft:strength 5 4
effect give @s[scores={_=5}] minecraft:strength 5 5
effect give @s[scores={_=6}] minecraft:strength 5 6
effect give @s[scores={_=7}] minecraft:strength 5 7
effect give @s[scores={_=8}] minecraft:strength 5 8
effect give @s[scores={_=9}] minecraft:strength 5 9
effect give @s[scores={_=10}] minecraft:strength 5 10
effect give @s[scores={_=11}] minecraft:strength 5 11
effect give @s[scores={_=12}] minecraft:strength 5 12
effect give @s[scores={_=13}] minecraft:strength 5 13
effect give @s[scores={_=14}] minecraft:strength 5 14
effect give @s[scores={_=15}] minecraft:strength 5 15
effect give @s[scores={_=16}] minecraft:strength 5 16
effect give @s[scores={_=17}] minecraft:strength 5 17
effect give @s[scores={_=18}] minecraft:strength 5 18
effect give @s[scores={_=19}] minecraft:strength 5 19
effect give @s[scores={_=20}] minecraft:strength 5 20
effect give @s[scores={_=21}] minecraft:strength 5 21
effect give @s[scores={_=22}] minecraft:strength 5 22
effect give @s[scores={_=23..}] minecraft:strength 5 23

scoreboard players add @s _ 1

#演出
function makeup:skill/act/ninja/tsuremai/attack

#スキルレベルによるダメージ追加
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"連舞",Level:4}].Damage
function skill:damage/add/skill/weapon

#ダメージ付与
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/
