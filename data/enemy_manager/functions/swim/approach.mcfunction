##############################
### 流体移動 接近距離
##############################

#プレイヤーからモブに向けてXm先にピンを立てる
execute positioned as @s positioned as @a[distance=..32,limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[SurveyPin]}
execute as @e[tag=SurveyPin,limit=1] positioned as @s facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=Approach1] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^1
execute if entity @s[tag=Approach2] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^2
execute if entity @s[tag=Approach4] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^4
execute if entity @s[tag=Approach8] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^8
execute if entity @s[tag=Approach16] as @e[tag=SurveyPin,limit=1] at @s run tp @s ^ ^ ^16
#Leaveで$Mが非反転時、モブ前方にピンがなければ静止する
execute if score $M Global matches 0.. at @s positioned ^ ^ ^32 unless entity @e[tag=SurveyPin,limit=1,distance=..32] run scoreboard players set $M Global 0

kill @e[tag=SurveyPin,limit=1]
