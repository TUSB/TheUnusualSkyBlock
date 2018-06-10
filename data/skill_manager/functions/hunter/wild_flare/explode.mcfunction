##############################
### ワイルドフレア拡散準備
##############################

###方角取得用マーカー召喚
summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invisible:false,Tags:[WildFlareMarker,Initialized]}
###方角取得用マーカー処理
execute store result score $X Global run data get entity @s Pos[0] 1000
execute store result score $Y Global run data get entity @s Pos[1] 1000
execute store result score $Z Global run data get entity @s Pos[2] 1000
execute store result score $DX Global run data get entity @s Motion[0] 100
execute store result score $DY Global run data get entity @s Motion[1] 100
execute store result score $DZ Global run data get entity @s Motion[2] 100

scoreboard players operation $X Global -= $DX Global
scoreboard players operation $Y Global -= $DY Global
scoreboard players operation $Z Global -= $DZ Global

execute store result entity @e[tag=WildFlareMarker,limit=1] Pos[0] double 0.001 run scoreboard players get $X Global
execute store result entity @e[tag=WildFlareMarker,limit=1] Pos[1] double 0.001 run scoreboard players get $Y Global
execute store result entity @e[tag=WildFlareMarker,limit=1] Pos[2] double 0.001 run scoreboard players get $Z Global

execute at @e[tag=WildFlareMarker,limit=1] run tp @e[tag=WildFlareMarker,limit=1] ~ ~ ~ facing entity @s

###ワイルドフレア生成
execute as @e[tag=WildFlareMarker,limit=1] at @s positioned ^ ^ ^2 run function skill_manager:hunter/wild_flare/make_flare
