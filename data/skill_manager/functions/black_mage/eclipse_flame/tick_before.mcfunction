##############################
### エクリプスフレイム前処理
##############################

###着弾時リセット
execute if entity @s[nbt=!{FallDistance:0f}] run scoreboard players set @s EclipseRadius 1000
execute if entity @s[nbt=!{FallDistance:0f}] run data merge entity @s {NoGravity:true,FallDistance:0f,Rotation:[0d,0d]}
