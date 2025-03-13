#Function
# Call DamageのExplosionのみを呼び出す
data modify storage mob_data: Call.Explosion set value 5b
function skill:enemy/damage/explosion
# 無敵にする
effect give @s resistance 2 4
