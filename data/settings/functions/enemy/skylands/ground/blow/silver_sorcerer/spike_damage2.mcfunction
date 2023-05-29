#Function
#ダメージ処理
function score_damage:api/attack
effect give @s levitation 1 20 false
effect give @s slowness 5 5 false
scoreboard players set @s ProjectileTime -10
