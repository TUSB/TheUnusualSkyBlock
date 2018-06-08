##############################
### バードストライクモブ適用サブファンクション
##############################

###ダメージ判定
scoreboard players add @s[tag=!Vehicle] Damage 2000
scoreboard players add @s[tag=Vehicle] Damage 20000
data merge entity @s {Motion:[0d,-10d,0d]}
