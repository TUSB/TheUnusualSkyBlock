##############################
### ワイルドフレア拡散準備
##############################

###ループカウント設定
scoreboard players set $Count Global 50

###矢召喚
function skill_manager:hunter/wild_flare/make_flare_loop

###モーション設定
execute as @e[distance=..1.1,tag=WildFlare] at @s run function skill_manager:hunter/wild_flare/set_velocity

###マーカー削除
kill @s
