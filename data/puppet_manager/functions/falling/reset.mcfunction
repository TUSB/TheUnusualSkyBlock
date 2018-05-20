##############################
### からくり落下ダメージ適用
##############################

###パペットのFallDistanceが3.3以上の時、ダメージ演出
execute if score $FallPuppet Global matches 33000.. store result score $PuppetDamage Global run scoreboard players remove $FallPuppet Global 33000
###落下距離リセット
execute store result entity @e[tag=ActivePuppet,limit=1] FallDistance float 1 run scoreboard players set $FallPuppet Global 0
