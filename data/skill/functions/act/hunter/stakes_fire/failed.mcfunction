#> skill:act/hunter/stakes_fire/failed
##############################
### ステークスファイア失敗
##############################

##Effectivenessとスキルダメージを半分に
scoreboard players set _ _ 2

#Effectiveness
execute store result score _ Calc run data get storage skill: Damage.Effectiveness
scoreboard players operation _ Calc /= _ _
execute store result storage skill: Damage.Effectiveness int 1 run scoreboard players get _ Calc

#Fire
execute store result score _ Calc run data get storage skill: Damage.Fire
scoreboard players operation _ Calc /= _ _
execute store result storage skill: Damage.Fire int 1 run scoreboard players get _ Calc


#矢に失敗タグを付与
tag @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] add StakesFailed
