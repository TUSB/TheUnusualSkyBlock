##############################
### 連舞発動
##############################

execute store result score $TsuremaiCount Global run data get entity @s Attributes[5].Modifiers[0].Amount
scoreboard players operation $TsuremaiCount Global /= $3 Const

effect clear @s minecraft:strength
execute if score $TsuremaiCount Global matches 0 run effect give @s minecraft:strength 5 0
execute if score $TsuremaiCount Global matches 1 run effect give @s minecraft:strength 5 1
execute if score $TsuremaiCount Global matches 2 run effect give @s minecraft:strength 5 2
execute if score $TsuremaiCount Global matches 3 run effect give @s minecraft:strength 5 3
execute if score $TsuremaiCount Global matches 4 run effect give @s minecraft:strength 5 4
execute if score $TsuremaiCount Global matches 5 run effect give @s minecraft:strength 5 5
execute if score $TsuremaiCount Global matches 6 run effect give @s minecraft:strength 5 6
execute if score $TsuremaiCount Global matches 7 run effect give @s minecraft:strength 5 7
execute if score $TsuremaiCount Global matches 8 run effect give @s minecraft:strength 5 8
execute if score $TsuremaiCount Global matches 9 run effect give @s minecraft:strength 5 9
execute if score $TsuremaiCount Global matches 10 run effect give @s minecraft:strength 5 10
execute if score $TsuremaiCount Global matches 11 run effect give @s minecraft:strength 5 11
execute if score $TsuremaiCount Global matches 12 run effect give @s minecraft:strength 5 12
execute if score $TsuremaiCount Global matches 13 run effect give @s minecraft:strength 5 13
execute if score $TsuremaiCount Global matches 14 run effect give @s minecraft:strength 5 14
execute if score $TsuremaiCount Global matches 15 run effect give @s minecraft:strength 5 15
execute if score $TsuremaiCount Global matches 16 run effect give @s minecraft:strength 5 16
execute if score $TsuremaiCount Global matches 17 run effect give @s minecraft:strength 5 17
execute if score $TsuremaiCount Global matches 18 run effect give @s minecraft:strength 5 18
execute if score $TsuremaiCount Global matches 19 run effect give @s minecraft:strength 5 19
execute if score $TsuremaiCount Global matches 20 run effect give @s minecraft:strength 5 20
execute if score $TsuremaiCount Global matches 21 run effect give @s minecraft:strength 5 21
execute if score $TsuremaiCount Global matches 22 run effect give @s minecraft:strength 5 22
execute if score $TsuremaiCount Global matches 23.. run effect give @s minecraft:strength 5 23

scoreboard players add $TsuremaiCount Global 1

### ターゲット捕捉
function calc_manager:target/melee/catch

###---演出---Start
execute if score $TsuremaiCount Global matches ..24 run data merge entity 0-0-0-0-0 {CustomName:"[{\"score\":{\"name\":\"$TsuremaiCount\",\"objective\":\"Global\"},\"color\":\"yellow\",\"bold\":true},\" Hit!!\"]"}
execute if score $TsuremaiCount Global matches 25.. run data merge entity 0-0-0-0-0 {CustomName:"[{\"score\":{\"name\":\"$TsuremaiCount\",\"objective\":\"Global\"},\"color\":\"gold\",\"bold\":true},\" Hit!!\"]"}
scoreboard players set $TextLength Global 4
title @s times 0 80 20
function main:show_text/subtitle/show

playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 2 2
execute if score $TsuremaiCount Global matches ..8 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
execute if score $TsuremaiCount Global matches 9..16 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.8
execute if score $TsuremaiCount Global matches 17..24 run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 1.2
execute if score $TsuremaiCount Global matches 25.. run playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:sweep_attack ^ ^0.2 ^1.3 0 0 0 2.5 2 force @a[tag=ShowParticles]
execute as @e[tag=MeleeTarget,limit=1] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0 0.5 0 1 5 force @a[tag=ShowParticles]
###---演出---End

###ダメージ取得
execute as @e[tag=MeleeTarget,limit=1] run function calc_manager:target/last_damage
scoreboard players operation $Damage Global = $LastDamage Global

###高ダメージ時の補正
scoreboard players remove $Damage Global 20000
scoreboard players operation $Damage Global /= $10 Const
scoreboard players add $Damage Global 20000
scoreboard players operation $Damage Global < $LastDamage Global

###スキルレベルによるダメージ補正
execute if score @s ModeSkill matches 21031 run scoreboard players operation $Damage Global *= $3 Const
execute if score @s ModeSkill matches 21032 run scoreboard players operation $Damage Global *= $5 Const
execute if score @s ModeSkill matches 21033 run scoreboard players operation $Damage Global *= $8 Const
execute if score @s ModeSkill matches 21034 run scoreboard players operation $Damage Global *= $17 Const
function skill_manager:damage_modifier/apply

###ダメージ付与
scoreboard players operation @e[tag=MeleeTarget,limit=1] Damage = $Damage Global

### ターゲット解放
function calc_manager:target/melee/release
