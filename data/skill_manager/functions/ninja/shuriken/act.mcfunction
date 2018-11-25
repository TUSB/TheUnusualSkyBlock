##############################
### 手裏剣発動
##############################

###---演出---Start
playsound minecraft:item.trident.throw master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:item.trident.throw master @a[distance=..16] ~ ~ ~ 1 1.8
###---演出---End

###雪玉の場合
data merge entity @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] {Tags:[Shuriken],NoGravity:true}
###ポーションの場合
execute positioned ^ ^ ^1 run function calc_manager:get/direction1
execute as @e[distance=..5,type=minecraft:potion,tag=!Initialized,sort=nearest,limit=1] run function calc_manager:set/motion1
data merge entity @e[distance=..5,type=minecraft:potion,tag=!Initialized,sort=nearest,limit=1] {Tags:[Shuriken],NoGravity:true}

###投擲スキル設定
scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill
###ダメージ保存
execute if score @s ModeSkill matches 21011 run scoreboard players set $Damage Global 7000
execute if score @s ModeSkill matches 21012 run scoreboard players set $Damage Global 22000
execute if score @s ModeSkill matches 21013 run scoreboard players set $Damage Global 36000
execute if score @s ModeSkill matches 21014 run scoreboard players set $Damage Global 110000
execute if score @s ModeSkill matches 21015 run scoreboard players set $Damage Global 220000
function skill_manager:damage_modifier/apply

execute positioned ~ ~1.52 ~ run scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] SkillAttribute = $Damage Global
