##############################
### 連舞発動
##############################

execute store result score $TsuremaiCount Global run data get entity @s Attributes[5].Modifiers[0].Amount
scoreboard players operation $TsuremaiCount Global /= $3 Const

effect clear @s minecraft:strength
execute if score $TsuremaiCount Global matches 0 run effect give @s minecraft:strength 2 0
execute if score $TsuremaiCount Global matches 1 run effect give @s minecraft:strength 2 1
execute if score $TsuremaiCount Global matches 2 run effect give @s minecraft:strength 2 2
execute if score $TsuremaiCount Global matches 3 run effect give @s minecraft:strength 2 3
execute if score $TsuremaiCount Global matches 4 run effect give @s minecraft:strength 2 4
execute if score $TsuremaiCount Global matches 5 run effect give @s minecraft:strength 2 5
execute if score $TsuremaiCount Global matches 6 run effect give @s minecraft:strength 2 6
execute if score $TsuremaiCount Global matches 7 run effect give @s minecraft:strength 2 7
execute if score $TsuremaiCount Global matches 8 run effect give @s minecraft:strength 2 8
execute if score $TsuremaiCount Global matches 9 run effect give @s minecraft:strength 2 9
execute if score $TsuremaiCount Global matches 10 run effect give @s minecraft:strength 2 10
execute if score $TsuremaiCount Global matches 11 run effect give @s minecraft:strength 2 11
execute if score $TsuremaiCount Global matches 12 run effect give @s minecraft:strength 2 12
execute if score $TsuremaiCount Global matches 13 run effect give @s minecraft:strength 2 13
execute if score $TsuremaiCount Global matches 14 run effect give @s minecraft:strength 2 14
execute if score $TsuremaiCount Global matches 15 run effect give @s minecraft:strength 2 15
execute if score $TsuremaiCount Global matches 16 run effect give @s minecraft:strength 2 16
execute if score $TsuremaiCount Global matches 17 run effect give @s minecraft:strength 2 17
execute if score $TsuremaiCount Global matches 18 run effect give @s minecraft:strength 2 18
execute if score $TsuremaiCount Global matches 19 run effect give @s minecraft:strength 2 19
execute if score $TsuremaiCount Global matches 20 run effect give @s minecraft:strength 2 20
execute if score $TsuremaiCount Global matches 21 run effect give @s minecraft:strength 2 21
execute if score $TsuremaiCount Global matches 22 run effect give @s minecraft:strength 2 22
execute if score $TsuremaiCount Global matches 23.. run effect give @s minecraft:strength 2 23

scoreboard players add $TsuremaiCount Global 1

execute positioned ^ ^ ^3 run tag @e[distance=..3,tag=Mob] add SkillTarget

###---演出---Start
execute if score $TsuremaiCount Global matches ..24 run title @s subtitle [{"score":{"name":"$TsuremaiCount","objective":"Global"},"color":"yellow","bold":true}," Hit!!                                "]
execute if score $TsuremaiCount Global matches 25 run title @s subtitle [{"score":{"name":"$TsuremaiCount","objective":"Global"},"color":"gold","bold":true}," Hit!!                                "]
title @s times 0 40 0
title @s title [""]
playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 2 2
execute if score $TsuremaiCount Global matches ..8 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
execute if score $TsuremaiCount Global matches 9..16 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.8
execute if score $TsuremaiCount Global matches 17..24 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 1.2
execute if score $TsuremaiCount Global matches 25.. run playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:sweep_attack ^ ^0.2 ^1.3 0 0 0 2.5 2 force
execute as @e[tag=SkillTarget] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0 0.5 0 1 5 force
###---演出---End


###ダメージ計算
scoreboard players set $Damage Global 0
execute as @e[distance=..6,tag=SkillTarget,sort=nearest,limit=1] run function skill_manager:knight/falcon_slash/calc_damage

###スキルレベルによるダメージ補正
execute if score @s ModeSkill matches 21031 run scoreboard players operation $Damage Global *= $20 Const
execute if score @s ModeSkill matches 21032 run scoreboard players operation $Damage Global *= $40 Const
execute if score @s ModeSkill matches 21033 run scoreboard players operation $Damage Global *= $80 Const
execute if score @s ModeSkill matches 21034 run scoreboard players operation $Damage Global *= $140 Const

###ダメージ付与
execute positioned ^ ^ ^2 run scoreboard players operation @e[distance=..6,tag=SkillTarget,sort=nearest,limit=1] Damage = $Damage Global
tag @e[tag=SkillTarget] remove SkillTarget
