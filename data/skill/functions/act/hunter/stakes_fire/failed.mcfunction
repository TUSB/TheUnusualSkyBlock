#> skill:act/hunter/stakes_fire/failed
##############################
### ステークスファイア失敗
##############################

#Effectivenessとスキルダメージを半分に
execute store result storage skill: Damage.Effectiveness int 0.5 run data get storage skill: Damage.Effectiveness
execute store result storage skill: Damage.Fire int 0.5 run data get storage skill: Damage.Fire

#矢に失敗タグを付与
tag @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] add StakesFailed
