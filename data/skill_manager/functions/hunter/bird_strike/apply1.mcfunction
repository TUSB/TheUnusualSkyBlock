##############################
### バードストライクモブ適用サブファンクション
##############################

###ダメージ判定
scoreboard players add @s[tag=!Vehicle] Damage 40000
scoreboard players add @s[tag=Vehicle] Damage 400000
data merge entity @s {Motion:[0d,-10d,0d]}
