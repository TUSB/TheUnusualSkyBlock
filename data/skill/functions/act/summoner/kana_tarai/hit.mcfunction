##############################
### 金タライヒット
##############################

#ダメージをロード
function skill:damage/load
#ダメージ付与
execute as @e[tag=Mob,dx=0] run function skill:damage/apply/
#kill
kill @s
#演出
function makeup:skill/act/summoner/kana_tarai/hit
