
### ワイルドフレア拡散準備

###ループカウント設定
scoreboard players set _ Count 50

###矢召喚
function skill:act/hunter/wild_flare/make_flare_loop

###モーション設定
execute as @e[distance=..1.1,tag=WildFlare] at @s run function skill:act/hunter/wild_flare/set_velocity

###マーカー返却
function calc:geometry/return_marker
