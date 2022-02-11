#実行
function skill:practice/act/
#MP消費
scoreboard players operation @s MP -= _ MP

#スキルを使ったらMP回復速度を落とす
execute if score _ MP matches 1.. run scoreboard players set @s MPAcceleration -200

#MPバー反映
function player:mp_bar/set
