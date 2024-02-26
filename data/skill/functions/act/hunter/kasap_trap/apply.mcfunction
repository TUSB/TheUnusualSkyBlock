##############################
### ルカナントラップ適用
##############################

#DamageをCalc/100倍
scoreboard players set _ _ 100
scoreboard players operation @s Damage *= _ Calc
scoreboard players operation @s Damage /= _ _
#重複防止用effect付与 unluck Lv100
data modify entity @s ActiveEffects append value {Id:27,Amplifier:100b,Duration:1}
