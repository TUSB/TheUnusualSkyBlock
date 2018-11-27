##############################
### ワイルドフレア拡散準備
##############################

###方角取得用マーカー召喚
summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invisible:true,Tags:[WildFlareMarker,Initialized]}
###方角取得用マーカー処理
function calc_manager:get/pos1
function calc_manager:get/motion2
function calc_manager:subtract/1-2

execute as @e[tag=WildFlareMarker,limit=1] at @s run function calc_manager:set/pos1
execute at @e[tag=WildFlareMarker,limit=1] run tp @e[tag=WildFlareMarker,limit=1] ~ ~ ~ facing entity @s

###ワイルドフレア生成
scoreboard players operation $DamageBase Global = @s SkillAttribute
execute as @e[tag=WildFlareMarker,limit=1] at @s positioned ^ ^ ^2 run function skill_manager:hunter/wild_flare/make_flare

###---演出---Start
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 0.5 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[tag=ShowParticles]
###---演出---End
