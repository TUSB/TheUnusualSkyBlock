##############################
### ワイルドフレア拡散準備
##############################

###方角取得用マーカー召喚
summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invisible:true,Tags:[WildFlareMarker,Initialized]}
###方角取得用マーカー処理
function calc_manager:get/pos1
function calc_manager:get/motion2

scoreboard players operation $X1 Global -= $X2 Global
scoreboard players operation $Y1 Global -= $Y2 Global
scoreboard players operation $Z1 Global -= $Z2 Global

execute as @e[tag=WildFlareMarker,limit=1] at @s run function calc_manager:set/pos1
execute at @e[tag=WildFlareMarker,limit=1] run tp @e[tag=WildFlareMarker,limit=1] ~ ~ ~ facing entity @s

###ワイルドフレア生成
execute as @e[tag=WildFlareMarker,limit=1] at @s positioned ^ ^ ^2 run function skill_manager:hunter/wild_flare/make_flare
