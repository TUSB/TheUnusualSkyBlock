##############################
### バードストライクモブ適用サブファンクション
##############################

###ダメージ判定
scoreboard players add @s[tag=!Vehicle] Damage 80000
scoreboard players add @s[tag=Vehicle] Damage 800000
data merge entity @s {Motion:[0d,-10d,0d]}
