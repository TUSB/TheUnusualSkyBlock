##############################
### 流体移動 離脱距離
##############################

#プレイヤーからモブに向けてXm先にピンを立てる
execute positioned as @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},distance=..32,limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[SurveyPin]}
execute facing ^ ^ ^-1 as @e[tag=SurveyPin,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Leave1] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^1
execute if entity @s[tag=Leave2] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^2
execute if entity @s[tag=Leave4] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^4
execute if entity @s[tag=Leave8] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^8
execute if entity @s[tag=Leave16] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^16
#モブ前方にピンがなければ向きを反転する
execute positioned ^ ^ ^32 unless entity @e[tag=SurveyPin,limit=1,distance=..32] run scoreboard players operation $M Global *= $-1 Const

kill @e[tag=SurveyPin,limit=1]
