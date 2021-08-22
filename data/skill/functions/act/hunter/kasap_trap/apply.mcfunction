##############################
### ルカナントラップ適用
##############################

#DamageをCalc/100倍
scoreboard players set _ _ 100
scoreboard players operation @s Damage *= _ Calc
scoreboard players operation @s Damage /= _ _
