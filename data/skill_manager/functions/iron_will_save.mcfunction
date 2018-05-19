##############################
### アイアンウィル位置セーブ
##############################

###位置を保存
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:block minecraft:air",Age:0,WaitTime:2,ReapplicationDelay:2147483647,Duration:0,Tags:[Initialized,IronWillPosition,IronWillInitialize]}
###向きを保存
tp @e[tag=IronWillInitialize,limit=1] @s
###スコア紐付け
scoreboard players operation @e[tag=IronWillInitialize,limit=1] ID = @s ID
###タグ設定
tag @e[tag=IronWillInitialize] remove IronWillInitialize
tag @s add IronWill
