##############################
### エクリプスフレイム発動
##############################

execute positioned ~ ~1.52 ~ run kill @e[distance=..0.5,type=snowball]

###弾召喚
summon minecraft:snowball 1 1 1 {Tags:[Initializing],Silent:true,Passengers:[{id:"minecraft:armor_stand",NoGravity:false,Marker:true,Invisible:true,Invulnerable:true,Tags:[EclipseFlameCore,InitializingChild,TickingTask]}]}
###モーションを計算する
execute positioned ^ ^ ^-0.1 run tp @e[tag=Initializing,limit=1] ~ ~1.52 ~
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###モーション補正
scoreboard players set $M Global 180
function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing

###飛翔物スキル設定
execute if score @s ModeSkill matches 51021 run scoreboard players set $Damage Global 500
execute if score @s ModeSkill matches 51022 run scoreboard players set $Damage Global 1000
execute if score @s ModeSkill matches 51023 run scoreboard players set $Damage Global 2000
execute if score @s ModeSkill matches 51024 run scoreboard players set $Damage Global 4000
function calc_manager:apply_damage_modifier

scoreboard players operation @e[tag=InitializingChild,limit=1] SkillAttribute = $Damage Global
tag @e[tag=InitializingChild,limit=1] remove InitializingChild

###---演出---Start
playsound minecraft:entity.wither.shoot master @a[distance=..16] ~ ~ ~ 0.5 1.5
playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.wither.hurt master @a[distance=..16] ~ ~ ~ 0.5 0
###---演出---End
